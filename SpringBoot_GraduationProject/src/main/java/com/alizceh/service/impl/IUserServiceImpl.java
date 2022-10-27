package com.alizceh.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.alizceh.controller.utils.Constants;
import com.alizceh.controller.utils.TokenUtils;
import com.alizceh.dao.MenuDao;
import com.alizceh.dao.RoleDao;
import com.alizceh.dao.RoleMenuDao;
import com.alizceh.dao.UserDao;
import com.alizceh.domain.Menu;
import com.alizceh.domain.Users;
import com.alizceh.domain.WebUser;
import com.alizceh.exception.ServiceException;
import com.alizceh.service.IMenuService;
import com.alizceh.service.IUserService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
//import org.apache.catalina.User;
//import org.apache.shiro.SecurityUtils;
//import org.apache.shiro.authc.AuthenticationException;
//import org.apache.shiro.authc.AuthenticationToken;
//import org.apache.shiro.authc.UsernamePasswordToken;
//import org.apache.shiro.subject.Subject;
import lombok.SneakyThrows;
import org.apache.logging.log4j.util.Strings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class IUserServiceImpl extends ServiceImpl<UserDao, Users> implements IUserService{

    @Autowired
    private UserDao userDao;


    @Autowired
    private RoleDao roleDao;

    @Autowired
    private RoleMenuDao roleMenuDao;

    @Autowired
    private IMenuService iMenuService;

    @Override
    public String insertUser(Users users) {
        String msg = "";
        Boolean flag = true;
        List<Users> usersList = userDao.selectList(null);
        for (Users users1 : usersList) {
            if(users1.getUserAccount().equals(users.getUserAccount())){
                flag = false;
                break;
            }else{
                flag = true;
            }
        }
        if(flag) {
            if (users.getUserId() == null) {
                users.setUserId("u" + (usersList.size() + 1));
                users.setAvatarUrl("");
                users.setNickName("普通用户" + "u" + (usersList.size() + 1));
            }
            if(userDao.insert(users) > 0){
                msg = "添加成功！";
            }
        }else{
            msg =  "用户名已存在";
        }
        return msg;
    }

    @Override
    public Boolean updateUser(Users users) {
        List<Users> usersList = userDao.selectList(null);
        for (Users users1 : usersList) {
            if(users1.getUserAccount().equals(users.getUserAccount())){
                users.setId(users1.getId());
            }
        }
        return userDao.updateById(users)>0;
    }

    @SneakyThrows
    @Override
    public WebUser login(WebUser webUser) {
//        //  1.获取subject对象
//        Subject subject = SecurityUtils.getSubject();
//        //  2.封装请求数据到token
//        AuthenticationToken token = new UsernamePasswordToken(users.getUserAccount(),users.getUserPassword());
//        //  3.调用login()方法进行登录认证
//        try {
//            subject.login(token);
//            return true;
//        }catch (AuthenticationException e){
//            e.printStackTrace();
//            return false;
//        }
        QueryWrapper<Users> qw = new QueryWrapper<>();
        qw.eq("user_account",webUser.getUserAccount());
        qw.eq("user_password",webUser.getUserPassword());
        Users user ;
        try{
            user = getOne(qw);
        }catch (Exception e){
            e.printStackTrace();
            throw new ServiceException(Constants.CODE_500,"系统错误");
        }
        if (user!=null) {
            BeanUtil.copyProperties(user,webUser,true);
            String token = TokenUtils.getToken(user.getUserId().toString(), user.getUserPassword());
            webUser.setToken(token);

            String role = user.getRole();
            //  设置用户的菜单列表
            List<Menu> roleMenu = getRoleMenus(role);
            webUser.setMenus(roleMenu);
            return webUser;

        }else{
            throw new ServiceException(Constants.CODE_500,"用户名或密码错误");
        }
    }

    @Override
    public Boolean register(Users users) {
        return null;
    }

    @Override
    public WebUser getUserByUserName(String userName) {
        QueryWrapper<Users> qw = new QueryWrapper<>();
        qw.eq("user_account",userName);
        Users users = userDao.selectOne(qw);
        WebUser webUser = new WebUser();
        BeanUtil.copyProperties(users,webUser,true);
        String role = users.getRole();
        //  设置用户的菜单列表
        List<Menu> roleMenu = getRoleMenus(role);
        webUser.setMenus(roleMenu);
        return webUser;
    }

    @Override
    public Users getUserByUserId(String userId) {
        QueryWrapper<Users> qw = new QueryWrapper<>();
        qw.eq("user_id",userId);
        Users users = userDao.selectOne(qw);
        return users;
    }

    @Override
    public IPage<Users> getPage(Integer current, Integer pageSize, Users users) {
        System.out.println(users);
        LambdaQueryWrapper<Users> lqw = new LambdaQueryWrapper<>();
        lqw.like(Strings.isNotEmpty(users.getUserAccount()),Users::getUserAccount,users.getUserAccount());
        IPage page = new Page(current,pageSize);
        userDao.selectPage(page,lqw);
        return page;
    }

    //获取当前角色的菜单列表
    public List<Menu> getRoleMenus(String roleFlag) {
        Integer roleId = roleDao.selectByFlag(roleFlag);
        // 当前角色的所有菜单id集合
        List<Integer> menuIds = roleMenuDao.selectByRoleId(roleId);

        // 查出系统所有的菜单(树形)
        List<Menu> menus = iMenuService.findMenus("");
        // new一个最后筛选完成之后的list
        List<Menu> roleMenus = new ArrayList<>();
        // 筛选当前用户角色的菜单
        for (Menu menu : menus) {
            if (menuIds.contains(menu.getId())) {
                roleMenus.add(menu);
            }
            List<Menu> children = menu.getChildren();
            // removeIf()  移除 children 里面不在 menuIds集合中的 元素
            children.removeIf(child -> !menuIds.contains(child.getId()));
        }
        return roleMenus;
    }

}

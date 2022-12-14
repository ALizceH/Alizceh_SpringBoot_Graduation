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
                users.setNickName("????????????" + "u" + (usersList.size() + 1));
            }
            if(userDao.insert(users) > 0){
                msg = "???????????????";
            }
        }else{
            msg =  "??????????????????";
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
//        //  1.??????subject??????
//        Subject subject = SecurityUtils.getSubject();
//        //  2.?????????????????????token
//        AuthenticationToken token = new UsernamePasswordToken(users.getUserAccount(),users.getUserPassword());
//        //  3.??????login()????????????????????????
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
            throw new ServiceException(Constants.CODE_500,"????????????");
        }
        if (user!=null) {
            BeanUtil.copyProperties(user,webUser,true);
            String token = TokenUtils.getToken(user.getUserId().toString(), user.getUserPassword());
            webUser.setToken(token);

            String role = user.getRole();
            //  ???????????????????????????
            List<Menu> roleMenu = getRoleMenus(role);
            webUser.setMenus(roleMenu);
            return webUser;

        }else{
            throw new ServiceException(Constants.CODE_500,"????????????????????????");
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
        //  ???????????????????????????
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

    //?????????????????????????????????
    public List<Menu> getRoleMenus(String roleFlag) {
        Integer roleId = roleDao.selectByFlag(roleFlag);
        // ???????????????????????????id??????
        List<Integer> menuIds = roleMenuDao.selectByRoleId(roleId);

        // ???????????????????????????(??????)
        List<Menu> menus = iMenuService.findMenus("");
        // new?????????????????????????????????list
        List<Menu> roleMenus = new ArrayList<>();
        // ?????????????????????????????????
        for (Menu menu : menus) {
            if (menuIds.contains(menu.getId())) {
                roleMenus.add(menu);
            }
            List<Menu> children = menu.getChildren();
            // removeIf()  ?????? children ???????????? menuIds???????????? ??????
            children.removeIf(child -> !menuIds.contains(child.getId()));
        }
        return roleMenus;
    }

}

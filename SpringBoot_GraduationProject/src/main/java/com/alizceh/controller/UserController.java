package com.alizceh.controller;

import cn.hutool.core.bean.BeanUtil;
import com.alizceh.controller.utils.R;
import com.alizceh.controller.utils.TokenUtils;
import com.alizceh.domain.Menu;
import com.alizceh.domain.Sensor;
import com.alizceh.domain.Users;
import com.alizceh.domain.WebUser;
import com.alizceh.service.IUserService;
import com.alizceh.service.impl.IUserServiceImpl;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/users")
public class UserController {

    @Autowired
    private IUserService iUserService;


    @PostMapping
    public R save(@RequestBody Users user){
        return R.success(iUserService.insertUser(user));

    }

    @DeleteMapping("{id}")
    public R delete(@PathVariable Integer id){
        if(iUserService.removeById(id)){
            return R.success("已删除id为：" + id + "的用户");
        }
        return R.error();
    }


    @PutMapping("/update")
    public R update(@RequestBody Users user){
        QueryWrapper<Users> qw = new QueryWrapper<>();
        qw.eq("user_account",user.getUserAccount());
        user.setId(iUserService.getOne(qw).getId());
        if(iUserService.updateById(user)){
            return R.success("更新成功！");
        }
        return R.error();
    }

    @GetMapping
    public R getAllUsers(){
        List<Users> usersList = iUserService.list();
        if(usersList!=null) {
            return R.success(usersList);
        }else{
            return R.error();
        }
    }

    @GetMapping("{id}")
    public R getUserById(@PathVariable Integer id){
        Users user =iUserService.getById(id);
        if(user!=null){
            return R.success(user);
        }else {
            return R.error();
        }
    }

    @GetMapping("{currentPage}/{pageSize}")
    public R getPage(@PathVariable Integer currentPage, @PathVariable Integer pageSize, Users users){
        System.out.println(users);
        IPage<Users> page = iUserService.getPage(currentPage, pageSize,users);
        if(currentPage>page.getPages()){
            page = iUserService.getPage(currentPage, pageSize,users);
        }
        if(page!=null) {
            return R.success(page);
        }
        return R.error();
    }

    @GetMapping("/userAccount/{userAccount}")
    public R getUserByUserName(@PathVariable String userAccount){
        WebUser webUser = iUserService.getUserByUserName(userAccount);
        return R.success(webUser);
    }

    @GetMapping("/test")
    public String test(){
        return "这里是被允许的test";
    }

    @GetMapping("/test2")
    public String test2(){
        return "这里是不被允许的test";
    }

    @SneakyThrows
    @PostMapping("/login")
    public R loginUser(@RequestBody WebUser webUser){
        WebUser login = iUserService.login(webUser);
        if(login!=null) {
            return R.success("登录成功",webUser);
        }else{
            return R.error();
        }
//        return new R(iUserService.login(users) != null,iUserService.login(users));
    }

    @PostMapping("/register")
    public R registerUser(@RequestBody Users users){
        String msg = iUserService.insertUser(users);
        if(msg!=null) {
            return R.success(msg);
        }else{
            return R.error();
        }
    }

}

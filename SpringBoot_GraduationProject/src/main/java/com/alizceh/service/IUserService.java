package com.alizceh.service;

import com.alizceh.domain.Sensor;
import com.alizceh.domain.Users;
import com.alizceh.domain.WebUser;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import org.apache.catalina.User;

public interface IUserService extends IService<Users> {
    String insertUser(Users users);
    Boolean updateUser(Users users);
    WebUser login(WebUser webUser);
    Boolean register(Users users);
    WebUser getUserByUserName(String userName);
    Users getUserByUserId(String userId);
    IPage<Users> getPage(Integer current, Integer pageSize, Users users);
}

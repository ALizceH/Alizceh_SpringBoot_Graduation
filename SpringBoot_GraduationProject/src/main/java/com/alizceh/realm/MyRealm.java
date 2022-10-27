package com.alizceh.realm;

import com.alizceh.domain.Users;
import com.alizceh.service.IUserService;
import lombok.SneakyThrows;
//import org.apache.shiro.authc.*;
//import org.apache.shiro.authz.AuthorizationInfo;
//import org.apache.shiro.realm.AuthorizingRealm;
//import org.apache.shiro.subject.PrincipalCollection;
//import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

//@Component
public class MyRealm /*extends AuthorizingRealm*/ {

//    @Autowired
//    private IUserService iUserService;
//
//    //自定义授权方法
//    @Override
//    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
//        return null;
//    }
//
//    //自定义登录认证方法
//    @SneakyThrows
//    @Override
//    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
//        //  1.获取用户身份信息
//        String userAccount = authenticationToken.getPrincipal().toString();
//        //  2.调用业务层获取用户信息(数据库)
//        Users user = iUserService.getUserByUserName(userAccount);
//        //  3.非空判断，将数据封装返回
//        if(user != null){
//            return new SimpleAuthenticationInfo(
//                    authenticationToken.getPrincipal(),
//                    user.getUserPassword(),
//                    ByteSource.Util.bytes("salt"),
//                    authenticationToken.getPrincipal().toString()
//            );
//        }
//        return null;
//    }
}

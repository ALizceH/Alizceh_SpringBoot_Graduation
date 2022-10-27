package com.alizceh.config;

import com.alizceh.realm.MyRealm;
//import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
//import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
//import org.apache.shiro.spring.web.config.DefaultShiroFilterChainDefinition;
//import org.apache.shiro.spring.web.config.ShiroFilterChainDefinition;
//import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.LinkedHashMap;
import java.util.Map;

//@Configuration
public class ShiroConfig {

////    @Autowired
////    private MyRealm myRealm;
//
//    @Bean
//    public DefaultWebSecurityManager defaultWebSecurityManager(){
//        //  1.创建defaultWebSecurityManager对象
//        DefaultWebSecurityManager manager = new DefaultWebSecurityManager();
////        //  2.创建加密对象，设置相关属性
////        HashedCredentialsMatcher matcher = new HashedCredentialsMatcher();
////        //  2.1 采用MD5加密
////        matcher.setHashAlgorithmName("md5");
////        //  2.2迭代加密次数
////        matcher.setHashIterations(3);
////        //  3.将加密对象存储到myRealm中
////        myRealm.setCredentialsMatcher(matcher);
////        //  4.将myRealm存入defaultWebSecurityManager对象
////        manager.setRealm(myRealm);
//        //  5.返回
//        return manager;
//    }
//
//    @Bean("shiroFilterFactoryBean1")
//    public DefaultShiroFilterChainDefinition shiroFilterFactoryBean(DefaultWebSecurityManager manager){
//        DefaultShiroFilterChainDefinition definition = new DefaultShiroFilterChainDefinition();
//        //设置不用认证可以访问的资源
////        definition.addPathDefinition("/users/login","anon");
//        //设置需要进行登录认证的拦截范围
////        definition.addPathDefinition("/sensor","authc");
////        definition.addPathDefinition("/sensor/*","authc");
////        definition.addPathDefinition("/sensor/*/*","authc");
////        definition.addPathDefinition("/users/test2","authc");
//        return definition;
////        曾用方法
////        ShiroFilterFactoryBean filterFactoryBean = new ShiroFilterFactoryBean();
////        filterFactoryBean.setSecurityManager(manager);
////        Map<String,String> map = new LinkedHashMap<>();
////        map.put("/users/test","anon");
////        map.put("/users/test2","authc");
////        filterFactoryBean.setFilterChainDefinitionMap(map);
////        filterFactoryBean.setLoginUrl("/login.html");
////        return filterFactoryBean;
//    }
}

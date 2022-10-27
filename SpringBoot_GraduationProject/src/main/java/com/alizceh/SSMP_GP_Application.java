package com.alizceh;

import com.alizceh.controller.utils.NleCloudAPI;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;


/*
* 单线程单独获取传感器数值存入数据库
* Refer:https://blog.csdn.net/u013456370/article/details/79411952
* */
@EnableScheduling
@SpringBootApplication
public class SSMP_GP_Application {
    public static void main(String[] args) throws InterruptedException {
        SpringApplication.run(SSMP_GP_Application.class, args);
        NleCloudAPI n = new NleCloudAPI();
//        n.getSensor();
    }
}

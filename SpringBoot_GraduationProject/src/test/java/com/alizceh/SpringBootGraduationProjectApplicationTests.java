package com.alizceh;

import com.alizceh.controller.utils.NleCloudAPI;
import com.alizceh.controller.utils.RestMock;
import com.alizceh.domain.SendSensorParameters;
import com.alizceh.domain.Users;
import com.alizceh.service.ISensorService;
import com.alizceh.service.IUserService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.util.DigestUtils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@SpringBootTest
class SpringBootGraduationProjectApplicationTests {

    @Autowired
    private IUserService iUserService;

    @Autowired
    private ISensorService iSensorService;

    @Test
    void contextLoads() {
        Users users = new Users("u2","Alice","zch123","1231@qq.com");
        System.out.println(iUserService.save(users));
    }


    @Test
    void Login(){
        Boolean flag = false;
        String account = "test";
        String password = "114514";
        password = DigestUtils.md5DigestAsHex(password.getBytes());
        List<Users> usersList = iUserService.list();
        for (Users users : usersList) {
            if(flag)break;
            if(account.equals(users.getUserAccount())&&(password.equals(users.getUserPassword()))){
                flag = true;
            }else
            {
                flag = false;
            }
        }
        if(flag){
            System.out.println("登录成功！");
        }
        else {
            System.out.println("登录失败！");
        }

    }


    @Test
    public void test() throws JsonProcessingException {
        RestMock restMock = new RestMock();
        ObjectMapper mapper = new ObjectMapper();
        Map<String,Object> loginMap = new HashMap<>();
        Map<String,Object> readMap = new HashMap<>();
        Map<String,Object> recvMap = new HashMap<>();
        loginMap.put("Account","15057735381");
        loginMap.put("Password","zch0211109");
        loginMap.put("IsRememberMe",true);
        System.out.println(loginMap);
        String s = restMock.sendPost(loginMap,"http://api.nlecloud.com/Users/Login");
        readMap = mapper.readValue(s,Map.class);
//        for(Object key:readMap.keySet()){
//            if("ResultObj".equals(key)){
//                recvMap = (Map<String, Object>) readMap.get("ResultObj");
//            }
//        }
        recvMap = (Map<String, Object>) readMap.get("ResultObj");

//        for(String key:recvMap.keySet()){
//            System.out.println(key);
//        }
        System.out.println(recvMap.get("AccessToken"));

    }

    @Test
    public void test2(){
        iSensorService.remove(new QueryWrapper<>());
        NleCloudAPI n = new NleCloudAPI();
//        SendSensorParameters parameters = new SendSensorParameters(556011,"alarm","2022-10-12 10:34:46",1,"MAX");
//        SendSensorParameters parameters2 = new SendSensorParameters(
//                556011,
//                "alarm",
//                "2022-10-12 10:34:46",
//                1,
//                "MIN");
//        n.receiveSensor(parameters);
//        n.receiveSensor(parameters2);
    }

    @Test
    public void test3(){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date now = new Date();
        System.out.println("当前时间：" + sdf.format(now));

        Date afterDate = new Date(now .getTime() + 300000);
        System.out.println(sdf.format(afterDate));
        System.out.println(sdf.format(afterDate).getClass());
    }

    @Test
    public void test4(){
        List sensorList = iSensorService.list();
        for (Object o : sensorList) {
            System.out.println(o);
        }
    }

    @Test
    public void removeTest(){
        //清除所有数据
        //iSensorService.remove(new QueryWrapper<>());

    }

    @Test
    public void loginTest(){
        Users users = new Users();
        users.setUserAccount("Alizceh");
        users.setUserPassword("root");
        //users.setUserPassword(DigestUtils.md5DigestAsHex(users.getUserPassword().getBytes()));
        //System.out.println(iUserService.login(users));
    }

    @Test
    public void getUserByUserAccount(){
        System.out.println(iUserService.getUserByUserName("Alice"));
    }

    @Test
    public void getSensorMessage(){
        NleCloudAPI nle = new NleCloudAPI();
        SendSensorParameters parameters = new SendSensorParameters(
                564102,
                "2022-01-01 00:00:00",
                "ASC",
                100);
        nle.receiveSensor(parameters);
    }


    @Test
    public void test111(){
        Integer i = 114514;
        double d = 0.0;
        System.out.println(Double.valueOf(i).toString());
    }
}

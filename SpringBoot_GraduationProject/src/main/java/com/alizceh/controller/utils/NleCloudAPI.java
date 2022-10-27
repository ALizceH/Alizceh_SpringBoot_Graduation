package com.alizceh.controller.utils;

import com.alizceh.domain.SendSensorParameters;
import com.alizceh.domain.Sensor;
import com.alizceh.service.ISensorService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.AsyncResult;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.*;
import java.util.concurrent.Future;

/*
* Service空指针异常
* refer:https://blog.csdn.net/qq_40994260/article/details/103673050?spm=1001.2101.3001.6650.1&utm_medium=distribute.pc_relevant.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-1-103673050-blog-124156882.t0_edu_mix&depth_1-utm_source=distribute.pc_relevant.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-1-103673050-blog-124156882.t0_edu_mix&utm_relevant_index=1
* */

/*
* https://blog.csdn.net/weixin_44889894/article/details/111950758
* https://blog.csdn.net/qq_37525899/article/details/81132069
* */

/*
* 获取NewLab云平台传感器数据，调用云平台策略实现远程控制执行器(未实现)
* */
@Component
public class NleCloudAPI {

    private static String user_AccessToken;

    private static NleCloudAPI nleCloudAPI;

    @Autowired
    private ISensorService iSensorService;

    @PostConstruct
    public void init(){
        nleCloudAPI = this;
        nleCloudAPI.iSensorService = this.iSensorService;
    }


    //登录获取AccessToken
    public String login(){
        RestMock restMock = new RestMock();
        ObjectMapper mapper = new ObjectMapper();
        Map<String,Object> loginMap = new HashMap<>();
        Map<String,Object> readMap = new HashMap<>();
        Map<String,Object> recvMap = new HashMap<>();
        try {
            loginMap.put("Account", "15057735381");
            loginMap.put("Password", "zch0211109");
            loginMap.put("IsRememberMe", true);
            String s = restMock.sendPost(loginMap, "http://api.nlecloud.com/Users/Login");
            readMap = mapper.readValue(s, Map.class);
            recvMap =  (Map<String, Object>) readMap.get("ResultObj");
            user_AccessToken = (String) recvMap.get("AccessToken");
            //System.out.println(user_AccessToken);
        }catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return user_AccessToken;
    }

    public void receiveSensor(SendSensorParameters parameters){
        String type=null,RecordTime="";
        Double value=null;
        Boolean flag = false;
        Sensor sensor = new Sensor();
        RestMock restMock = new RestMock();
        ObjectMapper mapper = new ObjectMapper();
        List list = new ArrayList();
        List list2 = new ArrayList();
        Map<String,Object>  sendMap = new HashMap();
        Map<String,Object>  recvMap = new HashMap();
        String token = login();
        try {
            sendMap.put("AccessToken", token);
            sendMap.put("deviceId", parameters.getDeviceId());
            sendMap.put("StartDate", parameters.getStartDate());
            sendMap.put("Sort", parameters.getSort());
            sendMap.put("PageSize", parameters.getPageSize());
            String s = restMock.sendGet(sendMap);
            recvMap = mapper.readValue(s, Map.class);
            sendMap.clear();
            sendMap = (Map<String,Object>) recvMap.get("ResultObj");
            list = (List) sendMap.get("DataPoints");
            for(int i = 0;i<list.size();i++){
                sendMap.clear();
                sendMap = (Map<String,Object>)list.get(i);
                for(Map.Entry key:sendMap.entrySet()){
                    if("ApiTag".equals(key.getKey())) {
                        type = (String) key.getValue();
                    }
                }
                //System.out.println(type);
                list2 = (List) sendMap.get("PointDTO");
                for(int asd = 0;asd<list2.size();asd++) {
                    for (Map.Entry key : ((Map<?, ?>) list2.get(asd)).entrySet()) {
                        //System.out.println(key.getKey());
                        if("Value".equals(key.getKey())) {
                            value = Double.valueOf(key.getValue().toString());
                            if(value!=null)sensor.setSensorValue(value);
                            //System.out.println("value"+i+": "+value);
                        }

                        if("RecordTime".equals(key.getKey())) {
                            RecordTime = (String) key.getValue();
                            //System.out.println("RecordTime"+i+": "+RecordTime);
                            if(RecordTime!=null)sensor.setCreateTime(RecordTime);
                        }
                    }
                    if(value != null && RecordTime != null){
                        sensor = new Sensor(type,RecordTime,value);
                        if(nleCloudAPI.iSensorService!=null) {
                            flag = nleCloudAPI.iSensorService.insertSensor(sensor);
                        }
                        sensor = new Sensor();
                        System.out.println(flag);
                    }
                }
            }

//            for(int size=0;size<list.size();size++){
//                sendMap.put(list.);
//            }
//            System.out.println(list.get(0));
            //System.out.println(list.get(0));
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
    }

    @Scheduled(fixedDelay = 600000)
    public Future<Boolean> getSensor() throws InterruptedException {
        nleCloudAPI.iSensorService.remove(new QueryWrapper<>());
        NleCloudAPI n = new NleCloudAPI();
        SendSensorParameters parameters = new SendSensorParameters(
                568231,
                "2022-01-01 00:00:00",
                    "ASC",
                20);
        n.receiveSensor(parameters);
        return new AsyncResult(true);
    }


}

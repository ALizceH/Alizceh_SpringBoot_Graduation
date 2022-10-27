package com.alizceh.controller.utils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.web.client.RestTemplate;

import java.nio.charset.Charset;
import java.util.Map;


/*
* HTTP工厂
* 向前端发起请求
* */

public class RestMock {

    public static RestTemplate getInstance(String charset) {
        RestTemplate restTemplate = new RestTemplate();
        restTemplate.getMessageConverters().add(new StringHttpMessageConverter(Charset.forName(charset)));
        return restTemplate;
    }

    /**
     * 生成post请求的JSON请求参数
     *
     * @param alizceh 需要发送的json数据
     * @return
     */
    protected HttpEntity<Map> generatePostJson(Map<String, Object> alizceh) {

        //如果需要其它的请求头信息、都可以在这里追加
        HttpHeaders httpHeaders = new HttpHeaders();
        MediaType type = MediaType.parseMediaType(MediaType.APPLICATION_JSON_UTF8_VALUE);
        httpHeaders.setContentType(type);
        HttpEntity<Map> httpEntity = new HttpEntity<>(alizceh, httpHeaders);
        return httpEntity;
    }

    /**
     * 生成get参数请求url
     * 示例：https://0.0.0.0:80/api?u=u&o=o
     * 示例：https://0.0.0.0:80/api
     * @param alizceh   请求参数
     * @return
     */
    public String generateRequestParameters(Map<String, Object> alizceh) {
        String str = "http://api.nlecloud.com/devices/";
        StringBuilder sb = new StringBuilder().append(str);
        sb.append(alizceh.get("deviceId")+"/Datas");
        if (alizceh!=null) {
            sb.append("?");
            for (Map.Entry map : alizceh.entrySet()) {
                sb.append(map.getKey())
                        .append("=")
                        .append(map.getValue())
                        .append("&");
            }
            return sb.toString();
        }
        return sb.toString();
    }


    /**
     * post请求、请求参数为json
     *
     * @param alizceh 需要发送的json数据
     * @param sendUrl  填写对方的接口地址
     * @return
     */
    public String sendPost(Map<String, Object> alizceh, String sendUrl) {
        String uri = sendUrl;
        ResponseEntity<String> yinJiangResponseEntity = getInstance("utf-8").postForEntity
                (
                        uri,
                        generatePostJson(alizceh),
                        String.class
                );

        String body = yinJiangResponseEntity.getBody();

        return body;
    }

    /**
     * get请求、请求参数为?拼接形式的
     * <p>
     * 最终请求的URI如下：
     * <p>
     * http://127.0.0.1:80/?name=张耀烽&sex=男
     *
     * @return
     */
    public String sendGet(Map<String, Object> alizceh) {


        ResponseEntity responseEntity = getInstance("utf-8").getForEntity
                (
                        generateRequestParameters(alizceh),
                        String.class
                );
        return (String) responseEntity.getBody();
    }
}

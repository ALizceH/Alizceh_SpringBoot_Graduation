package com.alizceh.controller.utils;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class R {
    private String code;
    private String msg;
    private Object data;



    public static R success(){
        return new R(Constants.CODE_200,"",null);
    }
    public static R success(Object data){
        return new R(Constants.CODE_200,"",data);
    }
    public static R success(String msg,Object data){
        return new R(Constants.CODE_200,msg,data);
    }
    public static R success(String msg){
        return new R(Constants.CODE_200,msg,null);
    }
    public static R error(String  code,String msg){
        return new R(code,msg,null);
    }

    public static R error(){
        return new R(Constants.CODE_500,"系统错误",null);
    }

}

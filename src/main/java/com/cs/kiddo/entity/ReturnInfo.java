package com.cs.kiddo.entity;


import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;


@Component
@Scope("prototype")
public class ReturnInfo {

    private int code;
    private String msg;


    public int getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }


    public ReturnInfo() {
    }

    public ReturnInfo(int code, String msg) {
        this.code = code;
        this.msg = msg;
    }


    public void setInfo(int code,String msg){
        this.code=code;
        this.msg=msg;
    }
}

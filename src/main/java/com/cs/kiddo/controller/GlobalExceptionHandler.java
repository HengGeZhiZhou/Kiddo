package com.cs.kiddo.controller;


import com.cs.kiddo.entity.ReturnInfo;
import com.cs.kiddo.exception.DefinedException;
import com.cs.kiddo.util.ResultCode;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

@ControllerAdvice
public class GlobalExceptionHandler {
    private ReturnInfo returnInfo=new ReturnInfo();

    @ExceptionHandler(value = DefinedException.class)
    @ResponseBody
    public ReturnInfo DefinedException(Exception ex){
        returnInfo.setInfo(ResultCode.REQUEST_FAIL,ex.getMessage());
        return returnInfo;
    }
}

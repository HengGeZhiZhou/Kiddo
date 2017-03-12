package com.cs.kiddo.exception;


public class DefinedException extends SysException {

    public DefinedException(){
        super("Kiddo:The service layer an exception occurs");
    }

    public DefinedException(String msg){
        super(msg);
    }
}

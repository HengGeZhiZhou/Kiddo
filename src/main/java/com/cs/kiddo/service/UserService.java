package com.cs.kiddo.service;


import com.cs.kiddo.entity.User;
import com.cs.kiddo.exception.DefinedException;

public interface UserService {

    User getUser(String account) throws DefinedException;  //根据账号查找用户

    String registerUser(String account,String password);  //注册用户
}

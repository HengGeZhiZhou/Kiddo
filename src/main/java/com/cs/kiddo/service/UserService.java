package com.cs.kiddo.service;


import com.cs.kiddo.entity.User;
import com.cs.kiddo.exception.DefinedException;

public interface UserService {

    User getUser(String account) throws DefinedException;  //�����˺Ų����û�

    String registerUser(String account,String password);  //ע���û�
}

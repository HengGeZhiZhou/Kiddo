package com.cs.kiddo.dao;


import com.cs.kiddo.entity.User;

public interface UserDao extends BaseDao<User> {
    User getUser(String account);

    String getMaxId(); //获取当前用户中最大ID 返回id
}

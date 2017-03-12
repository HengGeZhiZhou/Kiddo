package com.cs.kiddo.service.impl;


import com.cs.kiddo.dao.UserDao;
import com.cs.kiddo.entity.User;
import com.cs.kiddo.exception.DefinedException;
import com.cs.kiddo.service.UserService;
import com.cs.kiddo.util.CreateNewUserId;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service
@Transactional
@Scope("prototype")
public class UserServiceImpl implements UserService {

    @Resource(name = "userDaoImpl")
    private UserDao userDao;

    @Override
    public User getUser(String account) throws DefinedException {
        try {
            return userDao.getUser(account);
        }
        catch (Exception e){
            throw  new DefinedException("用户不存在");
        }
    }

    @Override
    public String registerUser(User user) {
        user.setId(CreateNewUserId.getNewUserId(userDao.getMaxId()));
        user.setLastTime(new java.sql.Timestamp(System.currentTimeMillis()));
        user.setAddTime(new java.sql.Timestamp(System.currentTimeMillis()));
        userDao.save(user);
        return user.getId();
    }
}

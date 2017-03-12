package com.cs.kiddo;

import com.cs.kiddo.entity.User;
import com.cs.kiddo.exception.DefinedException;
import com.cs.kiddo.service.UserService;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class Test {

    @Resource(name = "userServiceImpl")
    private UserService userService;


    @org.junit.Test
    public void getUser(){
        try {
            System.out.println(userService.getUser("1000000"));
        } catch (DefinedException e) {
            e.printStackTrace();
        }
    }

    @org.junit.Test
    public void register(){
        User user=new User();
        user.setAccount("lyh");
        user.setPassword("123");
        System.out.println(userService.registerUser(user));
    }

}

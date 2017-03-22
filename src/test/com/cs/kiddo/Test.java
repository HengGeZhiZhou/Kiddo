package com.cs.kiddo;


import com.cs.kiddo.dao.VideoDao;
import com.cs.kiddo.entity.AbArticles;
import com.cs.kiddo.exception.DefinedException;
import com.cs.kiddo.service.NewsService;
import com.cs.kiddo.service.UserService;
import com.cs.kiddo.service.VideoService;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class Test {

    @Resource(name = "userServiceImpl")
    private UserService userService;

    @Resource(name = "newsServiceImpl")
    private NewsService newsService;

    @Resource(name = "videoServiceImpl")
    private VideoService videoService;
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
        System.out.println(userService.registerUser("lyh","123"));
    }


    @org.junit.Test
    public void getNews(){

        List<AbArticles> list=newsService.getIndexNews(1,3);
        for (AbArticles abArticles:list){
            System.out.println(abArticles);
            System.out.println("====================================================");
        }
    }

    @org.junit.Test
    public void getVideoUrl(){
        System.out.println(videoService.getVideo("HappyNewYear"));
    }

}

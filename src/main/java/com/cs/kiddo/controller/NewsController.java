package com.cs.kiddo.controller;


import com.cs.kiddo.entity.AbArticles;
import com.cs.kiddo.service.NewsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/Kiddo/News/*")
public class NewsController {

    @Resource(name = "newsServiceImpl")
    private NewsService newsService;

    @SuppressWarnings("unchecked")
    @RequestMapping(value = "getNews")
    public String getNews(HttpServletRequest request){
        List<AbArticles> newsCenter=newsService.getIndexNews(2,0);
        List<AbArticles> industryInfo=newsService.getIndexNews(3,0);
        request.setAttribute("newsCenter",newsCenter);
        request.setAttribute("industryInfo",industryInfo);
        return "index";
    }


    @SuppressWarnings("unchecked")
    @RequestMapping(value = "getNewsInfo/{id}")
    public String getNewsInfo(HttpServletRequest request,@PathVariable int id){
        request.setAttribute("news",newsService.getNewsById(id));
        return "detail";
    }

}

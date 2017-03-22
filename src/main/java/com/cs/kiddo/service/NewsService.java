package com.cs.kiddo.service;


import com.cs.kiddo.entity.AbArticles;

import java.util.List;

public interface NewsService {

    List<AbArticles> getIndexNews(int type,int begin);

    AbArticles getNewsById(int id);
}

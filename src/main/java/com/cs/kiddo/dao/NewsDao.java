package com.cs.kiddo.dao;

import com.cs.kiddo.entity.AbArticles;

import java.util.List;


public interface NewsDao extends BaseDao<AbArticles>{

    List<AbArticles> getNews(int type,int begin,int maxSize);


}

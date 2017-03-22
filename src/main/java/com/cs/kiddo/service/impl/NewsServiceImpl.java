package com.cs.kiddo.service.impl;

import com.cs.kiddo.dao.NewsDao;
import com.cs.kiddo.entity.AbArticles;
import com.cs.kiddo.service.NewsService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;


@Service
@Transactional
@Scope("prototype")
public class NewsServiceImpl implements NewsService {

    private int pageSize=8;

    @Resource(name = "newsDaoImpl")
    private NewsDao newsDao;

    @Override
    public List<AbArticles> getIndexNews(int type,int begin) {
        return newsDao.getNews(type,begin,pageSize);
    }

    @Override
    public AbArticles getNewsById(int id) {
        return newsDao.findObjectById(id);
    }
}

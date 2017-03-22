package com.cs.kiddo.service.impl;


import com.cs.kiddo.dao.VideoDao;
import com.cs.kiddo.entity.Video;
import com.cs.kiddo.service.VideoService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service
@Transactional
@Scope("prototype")
public class VideoServiceImpl implements VideoService {

    @Resource(name = "videoDaoImpl")
    private VideoDao videoDao;

    @Override
    public Video getVideo(String video) {
        return videoDao.findObjectById(video);
    }
}

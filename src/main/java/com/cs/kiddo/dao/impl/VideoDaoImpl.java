package com.cs.kiddo.dao.impl;


import com.cs.kiddo.dao.VideoDao;
import com.cs.kiddo.entity.Video;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

@Repository
@Scope("prototype")
public class VideoDaoImpl extends BaseDaoImpl<Video> implements VideoDao {

}

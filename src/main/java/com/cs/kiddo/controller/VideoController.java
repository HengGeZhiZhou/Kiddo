package com.cs.kiddo.controller;

import com.cs.kiddo.service.VideoService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/Kiddo/Video/*")
public class VideoController {

    @Resource(name = "videoServiceImpl")
    private VideoService videoService;

    @SuppressWarnings("unchecked")
    @RequestMapping(value = "getVideoUrl/{video}")
    public String getVideoUrl(HttpServletRequest request, @PathVariable String video){
        request.setAttribute("videoSong",videoService.getVideo(video));
        return "videoPlay";
    }

}

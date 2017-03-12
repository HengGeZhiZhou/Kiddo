package com.cs.kiddo.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/Kiddo/User/*")
public class UserController {




    @SuppressWarnings("unchecked")
    @RequestMapping(value = "login",method = RequestMethod.POST)
    public String userLogin(HttpSession session, @RequestParam String account, @RequestParam String password){
        System.out.println("-----"+account);
        System.out.println("-----"+password);
        Subject  currentUser = SecurityUtils.getSubject();
        if (!currentUser.isAuthenticated()) {
            UsernamePasswordToken token = new UsernamePasswordToken(account, password);
            token.setRememberMe(true);
            currentUser.login(token);
            session.setAttribute("username",token.getUsername());
        }
        return "index";
    }
}

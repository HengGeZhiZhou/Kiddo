package com.cs.kiddo.controller;

import com.cs.kiddo.exception.DefinedException;
import com.cs.kiddo.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/Kiddo/User/*")
public class UserController {

    @Resource(name = "userServiceImpl")
    private UserService userService;

    @SuppressWarnings("unchecked")
    @RequestMapping(value = "index", method = RequestMethod.GET)
    public String getIndex() {
        return "index";
    }


    @SuppressWarnings("unchecked")
    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String userLogin(HttpSession session, @RequestParam String account, @RequestParam String password) throws DefinedException {
        try {
            Subject currentUser = SecurityUtils.getSubject();
            if (!currentUser.isAuthenticated()) {
                UsernamePasswordToken token = new UsernamePasswordToken(account, password);
                token.setRememberMe(true);
                currentUser.login(token);
                session.setAttribute("username", token.getUsername());
            }
            return "forward:/Kiddo/News/getNews.do";
        } catch (UnknownAccountException e) {
            throw new DefinedException(e.getMessage());
        }catch (Exception e){
            throw new DefinedException("��½ʧ��");
        }

    }

    @SuppressWarnings("unchecked")
    @RequestMapping(value = "register", method = RequestMethod.POST)
    public String userRegister(@RequestParam String account, @RequestParam String password) throws DefinedException {
        try {
            userService.registerUser(account, password);
            return "kiddoLogin";
        } catch (Exception e) {
            throw new DefinedException("�û����Ѿ�����");
        }
    }
}

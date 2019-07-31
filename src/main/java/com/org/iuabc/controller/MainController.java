package com.org.iuabc.controller;

import com.org.iuabc.entity.User;
import com.org.iuabc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Author: Xiongfei Han
 * Date: 2019/4/23 11:17
 * Version 1.0
 */
@Controller
public class MainController {

    private UserService userService;

    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    private boolean isReload;

    @RequestMapping("/")
    public String root(HttpSession httpSession){
        if (isReload)
            httpSession.removeAttribute("failMsg");
        isReload = true;
        return "login";
    }

    @RequestMapping("/login")
    public String login(String username, String password, HttpSession httpSession){
        if (username == null || password == null|| password.equals("") || username.equals("")) {
            httpSession.setAttribute("failMsg","请输入用户名和密码！");
            isReload = false;
            return "redirect:/";
        } else {
            try {
                User user = userService.authorizeUser(username, password);
                if (user != null) {
                    httpSession.setAttribute("user",user);
                    return "redirect:/index/";
                } else {
                    httpSession.setAttribute("failMsg","用户名或密码不正确！");
                    isReload = false;
                    return "redirect:/";
                }
            } catch (Exception e) {
                httpSession.setAttribute("failMsg","请输入用户名和密码！");
                isReload = false;
                return "redirect:/";
            }
        }
    }

    @RequestMapping("/index")
    public ModelAndView index() {
        return new ModelAndView("index");
    }
}

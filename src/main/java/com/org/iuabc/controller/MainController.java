package com.org.iuabc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Author: Xiongfei Han
 * Date: 2019/4/23 11:17
 * Version 1.0
 */
@Controller
public class MainController {

    @RequestMapping("/")
    public ModelAndView login(){

        return new ModelAndView("login");
    }

    @RequestMapping("/index")
    public ModelAndView index() {
        return new ModelAndView("index");
    }
}

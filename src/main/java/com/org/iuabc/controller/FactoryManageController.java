package com.org.iuabc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 车间管理控制器
 * Author: Xiongfei Han
 * Date: 2019/4/23 11:06
 * Version 1.0
 */
@Controller
@RequestMapping("/factory/manage")
public class FactoryManageController {

    @RequestMapping("/basicInfo")
    public ModelAndView basicInfo() {
        return new ModelAndView("factory/basic_info");
    }
}

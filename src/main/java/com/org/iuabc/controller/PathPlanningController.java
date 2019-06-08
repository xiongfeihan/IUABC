package com.org.iuabc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 路径规划控制器
 * Author: Xiongfei Han
 * Date: 2019/4/23 11:22
 * Version 1.0
 */
@Controller
@RequestMapping("/path/planning")
public class PathPlanningController {

    @RequestMapping("/dynamicState")
    public ModelAndView dynamicState() {
        return new ModelAndView("path/dynamic_state");
    }

    @RequestMapping("/staticState")
    public ModelAndView staticState() {
        return new ModelAndView("path/static_state");
    }
}

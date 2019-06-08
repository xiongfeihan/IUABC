package com.org.iuabc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 实时监控控制器
 * Author: Xiongfei Han
 * Date: 2019/4/23 11:43
 * Version 1.0
 */
@Controller
@RequestMapping("/realTime/monitor")
public class RealTimeMonitorController {

    @RequestMapping("/process")
    public ModelAndView process() {
        return new ModelAndView("monitor/process");
    }

    @RequestMapping("/warning")
    public ModelAndView warning() {
        return new ModelAndView("monitor/warning");
    }
}

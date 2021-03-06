package com.org.iuabc.controller;

import com.org.iuabc.entity.Workshop;
import com.org.iuabc.service.WorkshopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

/**
 * 路径规划控制器
 * Author: Xiongfei Han
 * Date: 2019/4/23 11:22
 * Version 1.0
 */
@Controller
@RequestMapping("/path/planning")
public class PathPlanningController {

    @Autowired
    private WorkshopService workshopService;

    @RequestMapping("/dynamicState")
    public ModelAndView dynamicState() {
        return new ModelAndView("path/dynamic_state");
    }

    @RequestMapping("/staticState")
    public ModelAndView staticState(Map<String, Object> map) {
        Workshop workshop = workshopService.findById(1L);
        map.put("workshop", workshop);
        return new ModelAndView("path/static_state", map);
    }
}

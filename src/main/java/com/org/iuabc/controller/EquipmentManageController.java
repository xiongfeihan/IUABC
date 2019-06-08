package com.org.iuabc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 设备管理控制器
 * Author: Xiongfei Han
 * Date: 2019/4/23 9:58
 * Version 1.0
 */
@Controller
@RequestMapping("/equipment/manage")
public class EquipmentManageController {

    @GetMapping("/craneInfo")
    public ModelAndView craneInfo() {
        return new ModelAndView("equipment/crane_info");
    }

    @GetMapping("/sensorInfo")
    public ModelAndView sensorInfo() {
        return new ModelAndView("equipment/sensor_info");
    }
}

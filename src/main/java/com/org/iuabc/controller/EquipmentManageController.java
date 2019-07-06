package com.org.iuabc.controller;

import com.org.iuabc.entity.Crane;
import com.org.iuabc.service.CraneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * 设备管理控制器
 * Author: Xiongfei Han
 * Date: 2019/4/23 9:58
 * Version 1.0
 */
@Controller
@RequestMapping("/equipment/manage")
public class EquipmentManageController {

    private CraneService craneService;

    @Autowired
    public void setCraneService(CraneService craneService) {
        this.craneService = craneService;
    }

    @GetMapping("/craneInfo")
    public ModelAndView craneInfo(Model model) {
        List<Crane> all = craneService.findAll();
        model.addAttribute("craneList",all);
        return new ModelAndView("equipment/crane_info");
    }

    @GetMapping("/sensorInfo")
    public ModelAndView sensorInfo() {
        return new ModelAndView("equipment/sensor_info");
    }
}

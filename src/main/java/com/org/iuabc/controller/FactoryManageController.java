package com.org.iuabc.controller;

import com.org.iuabc.entity.Workshop;
import com.org.iuabc.service.WorkshopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

/**
 * 车间管理控制器
 * Author: Xiongfei Han
 * Date: 2019/4/23 11:06
 * Version 1.0
 */
@Controller
@RequestMapping("/factory/manage")
public class FactoryManageController {

    private WorkshopService workshopService;

    @Autowired
    public void setWorkshopService(WorkshopService workshopService) {
        this.workshopService = workshopService;
    }

    @RequestMapping("/basicInfo")
    public ModelAndView basicInfo(Map<String, Object> map) {
        Workshop workshop = workshopService.findById(1L);
        map.put("workshop", workshop);
        return new ModelAndView("factory/basic_info", map);
    }
}

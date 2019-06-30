package com.org.iuabc.controller;

import com.org.iuabc.entity.RunningData;
import com.org.iuabc.service.RunningDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

/**
 * 实时监控控制器
 * Author: Xiongfei Han
 * Date: 2019/4/23 11:43
 * Version 1.0
 */
@Controller
@RequestMapping("/realTime/monitor")
public class RealTimeMonitorController {

    @Autowired
    private RunningDataService dataService;

    @RequestMapping("/process")
    public ModelAndView process() {
        Map<String, Object> map = new HashMap<>();
        RunningData data = dataService.findDataById(1L);
        map.put("data", data);
        return new ModelAndView("monitor/process", map);
    }

    @RequestMapping("/warning")
    public ModelAndView warning() {
        return new ModelAndView("monitor/warning");
    }

    @RequestMapping("/getLatestData")
    @ResponseBody
    public Map<String, Object> getLatestData() {
        Map<String, Object> result = new HashMap<>();
        result.put("code", "success");
        result.put("data", dataService.findLatestData());
        return result;
    }
}

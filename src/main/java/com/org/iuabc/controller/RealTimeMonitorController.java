package com.org.iuabc.controller;

import com.org.iuabc.entity.BasicInfo;
import com.org.iuabc.entity.RunningData;
import com.org.iuabc.service.BasicInfoService;
import com.org.iuabc.service.RunningDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
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

    // 判断起重机是否处于运行状态的时间
    private final static long RUNNING_TIME = 1000 * 30;

    private RunningDataService dataService;

    @Autowired
    private BasicInfoService basicInfoService;

    @Autowired
    public void setDataService(RunningDataService dataService) {
        this.dataService = dataService;
    }

    @RequestMapping("/process")
    public ModelAndView process() {
        Map<String, Object> map = new HashMap<>();
        BasicInfo info = basicInfoService.findById(1L);
        map.put("info", info);
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
        RunningData data = dataService.findLatestData();
        // 最新一条数据和现在时间对比，超过30s即认为起重机处于静止状态
        if (Math.abs(data.getCreateTime().getTime() - new Date().getTime()) < RUNNING_TIME) {
            result.put("status", "running");
        } else {
            result.put("status", "static");
        }
        result.put("code", "success");
        result.put("data", data);
        return result;
    }


}

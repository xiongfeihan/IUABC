package com.org.iuabc.controller;

import com.org.iuabc.entity.User;
import com.org.iuabc.entity.Workshop;
import com.org.iuabc.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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

    private WorkshopService workshopService;

    @Autowired
    private RunningDataService runningDataService;

    @Autowired
    private PathPlanService pathPlanService;

    @Autowired
    private PathCoordinateService pathCoordinateService;

    @Autowired
    private AccessService accessService;

    @Autowired
    public void setWorkshopService(WorkshopService workshopService) {
        this.workshopService = workshopService;
    }

    @RequestMapping("/dynamicState")
    public ModelAndView dynamicState() {
        return new ModelAndView("path/dynamic_state");
    }

    @RequestMapping("/staticState")
    public ModelAndView staticState(Map<String, Object> map, HttpServletRequest request) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        Integer access = accessService.getAccess(user.getUserId());
        Workshop workshop = workshopService.findById(1L);
        map.put("workshop", workshop);
        map.put("access", access);
        return new ModelAndView("path/static_state", map);
    }

    @RequestMapping("/send")
    @ResponseBody
    public Object send(@RequestParam("positionJson") String positionJson) {
        return pathPlanService.send(positionJson);
    }

    @RequestMapping("/generate")
    @ResponseBody
    public Object generate(@RequestParam("craneId") Long craneId) {
        return pathCoordinateService.getPath(craneId);
    }
}

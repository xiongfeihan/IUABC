package com.org.iuabc.controller;

import com.org.iuabc.entity.User;
import com.org.iuabc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

/**
 * 用户管理控制器
 * Author: Xiongfei Han
 * Date: 2019/4/22 10:00
 * Version 1.0
 */
@Controller
@RequestMapping("/user/manage")
public class UserManageController {

    private final UserService userService;

    @Autowired
    public UserManageController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/list")
    public ModelAndView list(Map<String, Object> map) {
        List<User> userList = userService.findList();
        map.put("userList", userList);
        return new ModelAndView("user/user_info", map);
    }

    @GetMapping("/operateLog")
    public ModelAndView operateLog() {
        return new ModelAndView("user/operate_log");
    }

    @PostMapping("/insert")
    @ResponseBody
    public int insert(@RequestParam("userJson") String user) {
        return userService.save(user);
    }

    @RequestMapping("/delete")
    @ResponseBody
    public int delete(@RequestParam("userId") String userId) {
        return userService.delete(userId);
    }
}

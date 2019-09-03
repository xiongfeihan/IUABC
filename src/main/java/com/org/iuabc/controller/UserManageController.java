package com.org.iuabc.controller;

import com.org.iuabc.entity.GuestLog;
import com.org.iuabc.entity.User;
import com.org.iuabc.service.GuestLogService;
import com.org.iuabc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

    private GuestLogService guestLogService;

    @Autowired
    public void setGuestLogService(GuestLogService guestLogService) {
        this.guestLogService = guestLogService;
    }

    @GetMapping("/list+{privilege}")
    public ModelAndView list(Map<String, Object> map,@PathVariable("privilege") int privilege) {
        if(privilege==1){
            List<User> userList = userService.findList();
            map.put("userList", userList);
            return new ModelAndView("user/user_info", map);
        }
        return new ModelAndView("user/user_info_2");
    }

    @GetMapping("/operateLog")
    public ModelAndView operateLog(Model model) {
        List<GuestLog> all = guestLogService.findAll();
        model.addAttribute("logList",all);
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

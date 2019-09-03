package com.org.iuabc.controller;

import com.org.iuabc.entity.GuestLog;
import com.org.iuabc.entity.User;
import com.org.iuabc.service.AccessService;
import com.org.iuabc.service.GuestLogService;
import com.org.iuabc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
    private AccessService accessService;

    @Autowired
    public UserManageController(UserService userService) {
        this.userService = userService;
    }

    private GuestLogService guestLogService;

    @Autowired
    public void setGuestLogService(GuestLogService guestLogService) {
        this.guestLogService = guestLogService;
    }

    @GetMapping("/list")
    public ModelAndView list(Map<String, Object> map, HttpServletRequest request) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        Integer access = accessService.getAccess(user.getUserId());
        if(access != 1){
            return new ModelAndView("sorry");
        }
        List<User> userList = userService.findList();
        map.put("userList", userList);
        return new ModelAndView("user/user_info", map);
    }

    @GetMapping("/operateLog")
    public ModelAndView operateLog(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        Integer access = accessService.getAccess(user.getUserId());
        if(access != 1){
            return new ModelAndView("sorry");
        }
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

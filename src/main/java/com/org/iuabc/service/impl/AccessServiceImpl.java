package com.org.iuabc.service.impl;

import com.org.iuabc.service.AccessService;
import com.org.iuabc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Author: Xiongfei Han
 * Date : 2019/9/3 9:24
 */
@Service
public class AccessServiceImpl implements AccessService {

    private UserService userService;

    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @Override
    public Integer getAccess(String userId) {
        return userService.getAccess(userId);
    }
}

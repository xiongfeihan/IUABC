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

    @Autowired
    private UserService userService;

    @Override
    public Boolean isSuperOrNot(String userId) {
        Integer access = userService.getAccess(userId);
        return access == 1;
    }

}

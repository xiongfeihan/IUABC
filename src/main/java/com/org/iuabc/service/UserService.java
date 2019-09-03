package com.org.iuabc.service;

import com.org.iuabc.entity.User;

import java.util.List;

/**
 * Author: Xiongfei Han
 * Date: 2019/4/22 10:09
 * Version 1.0
 */
public interface UserService {

    // 查询所有用户信息
    List<User> findList();

    // 新建用户
    Integer save(String user);

    // 删除用户
    Integer delete(String userId);

    // 验证用户名密码
    User authorizeUser(String username, String password);

    // 查询用户权限
    Integer getAccess(String userId);
}

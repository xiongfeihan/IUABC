package com.org.iuabc.service;

/**
 * Author: Xiongfei Han
 * Date : 2019/9/3 9:23
 */
public interface AccessService {

    // 判断用户是否有管理员权限
    Boolean isSuperOrNot(String userId);

}

package com.org.iuabc.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.org.iuabc.dao.UserDao;
import com.org.iuabc.entity.User;
import com.org.iuabc.service.UserService;
import com.org.iuabc.utils.KeyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Author: Xiongfei Han
 * Date: 2019/4/22 10:10
 * Version 1.0
 */
@Service
public class UserServiceImpl implements UserService {

    private final UserDao userDao;

    @Autowired
    public UserServiceImpl(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public List<User> findList() {
        return userDao.findAll();
    }

    @Override
    public Integer save(String userJson) {
        JSONObject jsonObject = JSONObject.parseObject(userJson);
        User user = new User();
        user.setUserId(KeyUtil.getUniqueKey());
        user.setUserName(jsonObject.getString("userName"));
        user.setGender(jsonObject.getString("gender"));
        user.setTelephone(jsonObject.getString("telephone"));
        user.setEmail(jsonObject.getString("email"));
        user.setPrivilege(Integer.valueOf(jsonObject.getString("privilege")));
        user.setPassword(jsonObject.getString("password"));
        try{
            userDao.save(user);
            return 1;
        } catch (Exception e) {
            return 0;
        }
    }

    @Override
    public Integer delete(String userId) {
        try {
            userDao.deleteById(userId);
            return 1;
        } catch (Exception e) {
            return -1;
        }
    }

    @Override
    public User authorizeUser(String username, String password) {
        return userDao.findByUserNameAndPassword(username, password);
    }
}

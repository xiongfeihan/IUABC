package com.org.iuabc.dao;

import com.org.iuabc.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Author: Xiongfei Han
 * Date: 2019/4/2 16:21
 * Version 1.0
 */
public interface UserDao extends JpaRepository<User, String> {

    User findByUserId(String userId);

}

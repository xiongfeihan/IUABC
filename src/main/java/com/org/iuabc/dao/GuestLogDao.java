package com.org.iuabc.dao;

import com.org.iuabc.entity.GuestLog;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Author: Shengjie Si
 * Date: 2019/9/2 20:01
 * Version: 1.0
 */
public interface GuestLogDao extends JpaRepository<GuestLog,Long> {

}

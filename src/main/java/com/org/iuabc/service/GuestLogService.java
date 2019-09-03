package com.org.iuabc.service;

import com.org.iuabc.entity.GuestLog;

import java.util.List;

/**
 * Author: Shengjie Si
 * Date: 2019/9/2 20:02
 * Version: 1.0
 */
public interface GuestLogService {

    void saveGuestLog(GuestLog guestLog);

    List<GuestLog> findAll();

    GuestLog findById(Long id);

}

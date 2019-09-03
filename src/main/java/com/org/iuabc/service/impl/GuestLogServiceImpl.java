package com.org.iuabc.service.impl;

import com.org.iuabc.dao.GuestLogDao;
import com.org.iuabc.entity.GuestLog;
import com.org.iuabc.service.GuestLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

/**
 * Author: Shengjie Si
 * Date: 2019/9/2 20:04
 * Version: 1.0
 */
@Service
public class GuestLogServiceImpl implements GuestLogService {

    private GuestLogDao guestLogDao;

    @Autowired
    public void setGuestLogDao(GuestLogDao guestLogDao) {
        this.guestLogDao = guestLogDao;
    }

    @Override
    public void saveGuestLog(GuestLog guestLog) {
        guestLogDao.save(guestLog);

    }

    @Override
    public List<GuestLog> findAll() {
        return guestLogDao.findAll();
    }

    @Override
    public GuestLog findById(Long id) {
        Optional<GuestLog> byId = guestLogDao.findById(id);
        return byId.get();
    }

}

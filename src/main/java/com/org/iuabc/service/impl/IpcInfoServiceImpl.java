package com.org.iuabc.service.impl;

import com.org.iuabc.dao.IpcInfoDao;
import com.org.iuabc.entity.IpcInfo;
import com.org.iuabc.service.IpcInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Author: Xiongfei Han
 * Date : 2019/9/12 16:32
 */
@Service
public class IpcInfoServiceImpl implements IpcInfoService {

    @Autowired
    private IpcInfoDao ipcInfoDao;

    @Override
    public IpcInfo findById(Long ipcId) {
        return ipcInfoDao.findByIpcId(ipcId);
    }

    @Override
    public IpcInfo create(IpcInfo ipcInfo) {
        return ipcInfoDao.save(ipcInfo);
    }

    @Override
    public IpcInfo findByIp(String ip) {
        return ipcInfoDao.findByIpcIp(ip);
    }

    @Override
    public IpcInfo update(IpcInfo ipcInfo) {
        return ipcInfoDao.save(ipcInfo);
    }

    @Override
    public IpcInfo findByCraneId(Long craneId) {
        return ipcInfoDao.findByCraneId(craneId);
    }
}

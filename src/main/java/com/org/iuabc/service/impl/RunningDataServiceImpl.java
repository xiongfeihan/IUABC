package com.org.iuabc.service.impl;

import com.org.iuabc.dao.RunningDataDao;
import com.org.iuabc.entity.IpcInfo;
import com.org.iuabc.entity.PathPlan;
import com.org.iuabc.entity.RunningData;
import com.org.iuabc.service.IpcInfoService;
import com.org.iuabc.service.PathPlanService;
import com.org.iuabc.service.RunningDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * Author: Xiongfei Han
 * Date : 2019/6/18 21:27
 */
@Service
public class RunningDataServiceImpl implements RunningDataService {

    @Autowired
    private RunningDataDao runningDataDao;

    @Autowired
    private IpcInfoService ipcInfoService;

    @Autowired
    private PathPlanService pathPlanService;

    @Autowired
    public void setRunningDataDao(RunningDataDao runningDataDao) {
        this.runningDataDao = runningDataDao;
    }

    @Override
    public RunningData findDataById(Long dataId) {
        return runningDataDao.findByDataId(dataId);
    }

    @Override
    public RunningData create(RunningData data) {
        return runningDataDao.save(data);
    }

    @Override
    public RunningData findLatestData() {
        return runningDataDao.findLatestData();
    }

    @Override
    public Integer send(String position) {
        return null;
    }
}

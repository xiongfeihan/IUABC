package com.org.iuabc.service.impl;

import com.org.iuabc.dao.RunningDataDao;
import com.org.iuabc.entity.RunningData;
import com.org.iuabc.service.RunningDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Author: Xiongfei Han
 * Date : 2019/6/18 21:27
 */
@Service
public class RunningDataServiceImpl implements RunningDataService {

    @Autowired
    private RunningDataDao runningDataDao;

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
}

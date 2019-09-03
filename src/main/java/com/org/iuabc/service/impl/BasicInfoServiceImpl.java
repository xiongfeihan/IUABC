package com.org.iuabc.service.impl;

import com.org.iuabc.dao.BasicInfoDao;
import com.org.iuabc.entity.BasicInfo;
import com.org.iuabc.service.BasicInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Author: Xiongfei Han
 * Date : 2019/9/2 17:13
 */
@Service
public class BasicInfoServiceImpl implements BasicInfoService {

    @Autowired
    private BasicInfoDao basicInfoDao;

    @Override
    public BasicInfo findById(Long infoId) {
        return basicInfoDao.findByInfoId(infoId);
    }
}

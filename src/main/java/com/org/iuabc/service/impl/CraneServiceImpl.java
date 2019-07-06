package com.org.iuabc.service.impl;

import com.org.iuabc.dao.CraneDao;
import com.org.iuabc.entity.Crane;
import com.org.iuabc.service.CraneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Author: Shengjie Si
 * Date: 2019/7/6 17:53
 * Version: 1.0
 */
@Service
public class CraneServiceImpl implements CraneService {

    private CraneDao craneDao;

    @Autowired
    public void setCraneDao(CraneDao craneDao) {
        this.craneDao = craneDao;
    }

    @Override
    public List<Crane> findAll() {
        return craneDao.findAll();
    }
}

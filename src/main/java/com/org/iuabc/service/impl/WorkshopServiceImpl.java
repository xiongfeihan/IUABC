package com.org.iuabc.service.impl;

import com.org.iuabc.dao.WorkshopDao;
import com.org.iuabc.entity.Workshop;
import com.org.iuabc.service.WorkshopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Author: Xiongfei Han
 * Date : 2019/6/9 16:11
 */
@Service
public class WorkshopServiceImpl implements WorkshopService {

    @Autowired
    private WorkshopDao workshopDao;

    @Override
    public Workshop findById(Long workshopId) {
        return workshopDao.findByWorkshopId(workshopId);
    }
}

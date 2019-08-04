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

    private WorkshopDao workshopDao;

    @Autowired
    public void setWorkshopDao(WorkshopDao workshopDao) {
        this.workshopDao = workshopDao;
    }

    @Override
    public Workshop findById(Long workshopId) {
        return workshopDao.findByWorkshopId(workshopId);
    }

    @Override
    public Workshop create(Workshop workshop) {
        return workshopDao.save(workshop);
    }
}

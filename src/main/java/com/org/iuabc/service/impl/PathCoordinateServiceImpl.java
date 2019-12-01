package com.org.iuabc.service.impl;

import com.org.iuabc.dao.PathCoordinateDao;
import com.org.iuabc.entity.PathCoordinate;
import com.org.iuabc.entity.PathPlan;
import com.org.iuabc.mapper.PathCoordinateMapper;
import com.org.iuabc.service.PathCoordinateService;
import com.org.iuabc.service.PathPlanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Author: Xiongfei Han
 * Date : 2019/11/26 21:55
 */
@Service
public class PathCoordinateServiceImpl implements PathCoordinateService {

    @Autowired
    private PathCoordinateMapper pathCoordinateMapper;

    @Autowired
    private PathCoordinateDao pathCoordinateDao;

    @Autowired
    private PathPlanService pathPlanService;

    @Override
    public PathCoordinate create(PathCoordinate pathCoordinate) {
        return pathCoordinateDao.save(pathCoordinate);
    }

    @Override
    public List<PathCoordinate> getPath(Long craneId) {
        PathPlan plan = pathPlanService.findLatestPlan(craneId);
        List<PathCoordinate> pathList = pathCoordinateDao.getPathByPathId(plan.getPathId());
        return pathList;
    }

    @Override
    public Integer savePointList(String pointList) {
        return pathCoordinateMapper.savePointList(pointList);
    }
}

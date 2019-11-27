package com.org.iuabc.service.impl;

import com.org.iuabc.dao.PathCoordinateDao;
import com.org.iuabc.entity.PathCoordinate;
import com.org.iuabc.service.PathCoordinateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Author: Xiongfei Han
 * Date : 2019/11/26 21:55
 */
@Service
public class PathCoordinateServiceImpl implements PathCoordinateService {

    @Autowired
    private PathCoordinateDao pathCoordinateDao;

    @Override
    public PathCoordinate create(PathCoordinate pathCoordinate) {
        return pathCoordinateDao.save(pathCoordinate);
    }
}

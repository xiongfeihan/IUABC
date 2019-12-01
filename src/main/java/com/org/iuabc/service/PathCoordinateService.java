package com.org.iuabc.service;

import com.org.iuabc.entity.PathCoordinate;

import java.util.List;

/**
 * Author: Xiongfei Han
 * Date : 2019/11/26 21:55
 */
public interface PathCoordinateService {

    PathCoordinate create(PathCoordinate pathCoordinate);

    List<PathCoordinate> getPath(Long craneId);

    Integer savePointList(String pointList);
}

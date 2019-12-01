package com.org.iuabc.service;

import com.org.iuabc.entity.PathPlan;

/**
 * Author: Xiongfei Han
 * Date : 2019/11/26 21:09
 */
public interface PathPlanService {

    // 新建路径规划起始点信息
    PathPlan create(PathPlan pathPlan);

    Integer send(String position);

    PathPlan findLatestPlan(Long craneId);

}

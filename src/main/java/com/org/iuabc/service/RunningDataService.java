package com.org.iuabc.service;

import com.org.iuabc.entity.RunningData;

/**
 * Author: Xiongfei Han
 * Date : 2019/6/18 21:27
 */
public interface RunningDataService {

    // 查询实时运行数据
    RunningData findDataById(Long dataId);

    // 创建运行数据
    RunningData create(RunningData data);

}

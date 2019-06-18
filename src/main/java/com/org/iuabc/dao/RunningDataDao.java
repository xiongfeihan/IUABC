package com.org.iuabc.dao;

import com.org.iuabc.entity.RunningData;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Author: Xiongfei Han
 * Date : 2019/6/18 21:26
 */
public interface RunningDataDao extends JpaRepository<RunningData, Long> {

    RunningData findByDataId(Long dataId);

}

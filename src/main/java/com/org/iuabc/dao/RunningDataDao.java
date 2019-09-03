package com.org.iuabc.dao;

import com.org.iuabc.entity.RunningData;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

/**
 * Author: Xiongfei Han
 * Date : 2019/6/18 21:26
 */
public interface RunningDataDao extends JpaRepository<RunningData, Long> {

    RunningData findByDataId(Long dataId);

    @Query(value = "select * from running_data order by data_id desc limit 1", nativeQuery = true)
    RunningData findLatestData();

}

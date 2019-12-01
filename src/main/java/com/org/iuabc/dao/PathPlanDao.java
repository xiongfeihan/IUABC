package com.org.iuabc.dao;

import com.org.iuabc.entity.PathPlan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

/**
 * Author: Xiongfei Han
 * Date : 2019/11/26 21:07
 */
public interface PathPlanDao extends JpaRepository<PathPlan, Long> {

    @Query(value = "select * from path_plan where crane_id = ?1 order by path_id desc limit 0,1", nativeQuery = true)
    PathPlan findLatestPlan(Long craneId);

}

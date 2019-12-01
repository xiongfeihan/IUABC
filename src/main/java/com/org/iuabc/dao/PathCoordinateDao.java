package com.org.iuabc.dao;

import com.org.iuabc.entity.PathCoordinate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * Author: Xiongfei Han
 * Date : 2019/11/26 21:54
 */
public interface PathCoordinateDao extends JpaRepository<PathCoordinate, Long> {

    @Query(value = "select * from path_coordinate where path_id = ?1", nativeQuery = true)
    List<PathCoordinate> getPathByPathId(Long pathId);

}

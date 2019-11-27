package com.org.iuabc.dao;

import com.org.iuabc.entity.PathCoordinate;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Author: Xiongfei Han
 * Date : 2019/11/26 21:54
 */
public interface PathCoordinateDao extends JpaRepository<PathCoordinate, Long> {
}

package com.org.iuabc.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * Author: Xiongfei Han
 * Date : 2019/11/28 20:20
 */
@Repository
@Mapper
public interface PathCoordinateMapper {

    @Insert(value = "insert into path_coordinate (crane_id, path_id, pointX, pointY, pointZ, path_flag) values ${list}")
    Integer savePointList(@Param("list") String pointList);

}

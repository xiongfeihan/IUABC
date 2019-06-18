package com.org.iuabc.dao;

import com.org.iuabc.entity.Workshop;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Author: Xiongfei Han
 * Date : 2019/6/9 16:10
 */
public interface WorkshopDao extends JpaRepository<Workshop, Long> {

    Workshop findByWorkshopId(Long workshopId);

}

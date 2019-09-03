package com.org.iuabc.dao;

import com.org.iuabc.entity.BasicInfo;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Author: Xiongfei Han
 * Date : 2019/9/2 17:11
 */
public interface BasicInfoDao extends JpaRepository<BasicInfo, Long> {

    BasicInfo findByInfoId(Long infoId);

}

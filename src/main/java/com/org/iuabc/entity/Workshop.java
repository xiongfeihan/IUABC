package com.org.iuabc.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * 车间基本信息实体类
 * Author: Xiongfei Han
 * Date : 2019/6/9 16:01
 */
@Data
@Entity
public class Workshop {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long workshopId;

    private Float length;

    private Float width;

    private Float height;

}

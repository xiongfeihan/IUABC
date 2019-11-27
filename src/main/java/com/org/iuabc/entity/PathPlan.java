package com.org.iuabc.entity;

import lombok.Data;
import org.hibernate.annotations.DynamicInsert;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

/**
 * Author: Xiongfei Han
 * Date : 2019/11/26 21:04
 */
@Entity
@Data
@DynamicInsert
public class PathPlan {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long pathId;

    private Float startX;

    private Float startY;

    private Float startZ;

    private Float endX;

    private Float endY;

    private Float endZ;

    private Date createTime;

    private Long craneId;

}

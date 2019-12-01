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
 * Date : 2019/11/26 20:08
 */
@Entity
@Data
@DynamicInsert
public class PathCoordinate {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long pointId;

    private Double pointX;

    private Double pointY;

    private Double pointZ;

    private Long pathId;

    private Date createTime;

    private Integer pathFlag;

    private Long craneId;

}

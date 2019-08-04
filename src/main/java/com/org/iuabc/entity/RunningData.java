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
 * Date : 2019/6/18 21:05
 */
@Entity
@Data
@DynamicInsert
public class RunningData {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long dataId;

    private Float cartSpeed;

    private Float cartPosition;

    private Integer cartLevel;

    private Integer cartDirection;

    private Float crabSpeed;

    private Float crabPosition;

    private Integer crabLevel;

    private Integer crabDirection;

    private Float hoistSpeed;

    private Float hoistPosition;

    private Integer hoistLevel;

    private Integer hoistDirection;

    private Float workload;

    private Long craneId;

    private Date createTime;

}

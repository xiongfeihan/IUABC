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
 * Date : 2019/9/2 16:50
 */
@Entity
@Data
@DynamicInsert
public class BasicInfo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long infoId;

    private Float cartMaxSpeed;

    private Float cartMaxPosition;

    private Integer cartLevel;

    private Float crabMaxSpeed;

    private Float crabMaxPosition;

    private Integer crabLevel;

    private Float hoistMaxSpeed;

    private Float hoistMaxPosition;

    private Integer hoistLevel;

    private Long craneId;

    private Date createTime;

}

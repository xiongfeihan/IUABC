package com.org.iuabc.entity;

import lombok.Data;
import org.hibernate.annotations.DynamicInsert;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Date;

/**
 * Author: Shengjie Si
 * Date: 2019/7/6 15:41
 * Version: 1.0
 */
@Entity
@Data
@DynamicInsert
public class Crane {

    @Id
    private Integer crane_id;

    private String crane_name;

    private String crane_workingLevel;

    private String crane_manufacturer;

    private Date crane_startUsingDate;

    private Float crane_ratedLiftingCapacity;

    private Float crane_standardSpan;

    private String crane_liftingHeight;

    private Integer crane_installation;

}

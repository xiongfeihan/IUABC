package com.org.iuabc.entity;

import lombok.Data;
import org.hibernate.annotations.DynamicInsert;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Date;

/**
 * Author: Xiongfei Han
 * Date: 2019/4/2 15:54
 * Version 1.0
 */
@Entity
@Data
@DynamicInsert
public class User {
    @Id
    private String userId;

    private String userName;

    private String gender;

    private String telephone;

    private String email;

    private Integer privilege;

    private String password;

    private Date createTime;

    private Date updateTime;
}

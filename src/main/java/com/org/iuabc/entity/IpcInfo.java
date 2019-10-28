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
 * Date : 2019/9/12 16:17
 */
@Entity
@Data
@DynamicInsert
public class IpcInfo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long ipcId;

    private String ipcIp;

    private Date connectTime;

    private Date disconnectTime;

    private Long craneId;

}

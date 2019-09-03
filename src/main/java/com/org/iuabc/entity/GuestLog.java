package com.org.iuabc.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

/**
 * Author: Shengjie Si
 * Date: 2019/9/2 18:55
 * Version: 1.0
 */
@Data
@Entity
public class GuestLog {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long logId;
    private String guestName;
    private String reqIp;
    private String reqUrl;
    private String reqMethod;
    private String reqArgs;
    private Date beginTime;
    private Date endTime;

    public GuestLog(String guestName, String reqIp, String reqUrl, String reqMethod, String reqArgs, Date beginTime) {
        this.guestName = guestName;
        this.reqIp = reqIp;
        this.reqUrl = reqUrl;
        this.reqMethod = reqMethod;
        this.reqArgs = reqArgs;
        this.beginTime = beginTime;
    }

    public GuestLog(){}
}

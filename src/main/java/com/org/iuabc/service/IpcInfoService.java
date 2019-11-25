package com.org.iuabc.service;

import com.org.iuabc.entity.IpcInfo;

/**
 * Author: Xiongfei Han
 * Date : 2019/9/12 16:30
 */
public interface IpcInfoService {

    IpcInfo findById(Long ipcId);

    IpcInfo create(IpcInfo ipcInfo);

    IpcInfo findByIp(String ip);

    IpcInfo update(IpcInfo ipcInfo);

}

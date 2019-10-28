package com.org.iuabc.dao;

import com.org.iuabc.entity.IpcInfo;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Author: Xiongfei Han
 * Date : 2019/9/12 16:29
 */
public interface IpcInfoDao extends JpaRepository<IpcInfo, Long> {

    IpcInfo findByIpcId(Long ipcId);

    IpcInfo findByIpcIp(String ip);

}

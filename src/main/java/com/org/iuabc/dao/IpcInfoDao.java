package com.org.iuabc.dao;

import com.org.iuabc.entity.IpcInfo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

/**
 * Author: Xiongfei Han
 * Date : 2019/9/12 16:29
 */
public interface IpcInfoDao extends JpaRepository<IpcInfo, Long> {

    IpcInfo findByIpcId(Long ipcId);

    @Query(value = "select * from ipc_info where ipc_ip = ?1 and deleted = 0", nativeQuery = true)
    IpcInfo findByIpcIp(String ip);

}

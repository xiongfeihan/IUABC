package com.org.iuabc.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.org.iuabc.dao.RunningDataDao;
import com.org.iuabc.entity.IpcInfo;
import com.org.iuabc.entity.RunningData;
import com.org.iuabc.service.IpcInfoService;
import com.org.iuabc.service.RunningDataService;
import com.org.iuabc.socket.ClientSocket;
import com.org.iuabc.socket.IuabcServerSocket;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Author: Xiongfei Han
 * Date : 2019/6/18 21:27
 */
@Service
public class RunningDataServiceImpl implements RunningDataService {

    private RunningDataDao runningDataDao;

    @Autowired
    private IpcInfoService ipcInfoService;

    @Autowired
    public void setRunningDataDao(RunningDataDao runningDataDao) {
        this.runningDataDao = runningDataDao;
    }

    @Override
    public RunningData findDataById(Long dataId) {
        return runningDataDao.findByDataId(dataId);
    }

    @Override
    public RunningData create(RunningData data) {
        return runningDataDao.save(data);
    }

    @Override
    public RunningData findLatestData() {
        return runningDataDao.findLatestData();
    }

    @Override
    public Integer send(String position) {
        StringBuilder builder = new StringBuilder();
        builder.append("{\"status\":2,\"data\":");
        builder.append(position);
        builder.append("}");

        if (IuabcServerSocket.clientsMap.size() == 0) {
            return 2;
        }
        if (IuabcServerSocket.clientsMap.size() > 0) {

            // 通过起重机Id找到对应的工控机ip地址
            IpcInfo ipc = ipcInfoService.findByCraneId(1L);
            String ip = ipc.getIpcIp();

            ClientSocket clientSocket = IuabcServerSocket.clientsMap.get(ip);
            clientSocket.send(builder.toString());
            return 1;
        }

        JSONObject jsonObject = JSONObject.parseObject(position);
        JSONObject start = jsonObject.getJSONObject("start");
        JSONObject end = jsonObject.getJSONObject("end");

        return 0;
    }
}

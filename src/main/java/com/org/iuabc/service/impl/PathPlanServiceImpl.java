package com.org.iuabc.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.org.iuabc.dao.PathPlanDao;
import com.org.iuabc.entity.IpcInfo;
import com.org.iuabc.entity.PathPlan;
import com.org.iuabc.service.IpcInfoService;
import com.org.iuabc.service.PathPlanService;
import com.org.iuabc.socket.ClientSocket;
import com.org.iuabc.socket.IuabcServerSocket;
import com.org.iuabc.utils.KeyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * Author: Xiongfei Han
 * Date : 2019/11/26 21:09
 */
@Service
public class PathPlanServiceImpl implements PathPlanService {

    @Autowired
    private IpcInfoService ipcInfoService;

    @Autowired
    private PathPlanDao pathPlanDao;

    @Override
    public PathPlan create(PathPlan pathPlan) {
        return pathPlanDao.save(pathPlan);
    }

    @Override
    public Integer send(String position) {
        // 无工控机在线
        if (IuabcServerSocket.clientsMap.size() == 0) {
            return 2;
        }
        // 工控机在线
        if (IuabcServerSocket.clientsMap.size() > 0) {
            JSONObject jsonObject = JSONObject.parseObject(position);
            JSONObject start = jsonObject.getJSONObject("start");
            JSONObject end = jsonObject.getJSONObject("end");
            // 先在表中记录
            PathPlan pathPlan = new PathPlan();

            // 起始坐标
            pathPlan.setStartX(start.getFloat("x"));
            pathPlan.setStartY(start.getFloat("y"));
            pathPlan.setStartZ(start.getFloat("z"));

            // 终点坐标
            pathPlan.setEndX(end.getFloat("x"));
            pathPlan.setEndY(end.getFloat("y"));
            pathPlan.setEndZ(end.getFloat("z"));

            pathPlan.setCreateTime(new Date());

            // TODO 起重机ID硬编码
            Long craneId = 1L;
            pathPlan.setCraneId(craneId);

            Long pathId = create(pathPlan).getPathId();

            // 然后发送给工控机
            StringBuilder builder = new StringBuilder();
            position = position.substring(0,1) + "\"craneId\":"+ craneId +",\"pathId\":"+ pathId +"," + position.substring(1);
            builder.append("{\"status\":2,\"data\":");
            builder.append(position);
            builder.append("}");

            // 通过起重机Id找到对应的工控机ip地址
            IpcInfo ipc = ipcInfoService.findByCraneId(1L);
            String ip = ipc.getIpcIp();

            ClientSocket clientSocket = IuabcServerSocket.clientsMap.get(ip);
            clientSocket.send(builder.toString());
            return 1;
        }

        return 0;
    }

    @Override
    public PathPlan findLatestPlan(Long craneId) {
        return pathPlanDao.findLatestPlan(craneId);
    }
}

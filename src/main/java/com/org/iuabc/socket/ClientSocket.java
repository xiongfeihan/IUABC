package com.org.iuabc.socket;

import com.alibaba.fastjson.JSONObject;
import com.org.iuabc.entity.IpcInfo;
import com.org.iuabc.entity.RunningData;
import com.org.iuabc.service.IpcInfoService;
import com.org.iuabc.service.RunningDataService;
import com.org.iuabc.service.WorkshopService;
import com.org.iuabc.service.impl.WorkshopServiceImpl;
import com.org.iuabc.utils.SpringUtil;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.net.SocketException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/**
 * Author: Xiongfei Han
 * Date : 2019/8/1 10:13
 */
@Data
@Slf4j
@Component
public class ClientSocket implements Runnable{

    @Autowired
    private RunningDataService runningDataService;

    @Autowired
    private WorkshopService workshopService;
//    private WorkshopService workshopService = SpringUtil.getBean(WorkshopService.class);

    @Autowired
    private IpcInfoService ipcInfoService;

    public static ClientSocket clientSocket;

    @PostConstruct
    public void init() {
        clientSocket = this;
    }

    private Socket socket;
    private DataInputStream inputStream;
    private DataOutputStream outputStream;
    private String key;
    private String message;

    /**
     * 注册socket到map里
     *
     * @param socket
     * @return
     */
    public static ClientSocket register(Socket socket) {
        ClientSocket client = new ClientSocket();
        try {
            client.setSocket(socket);
            client.setInputStream(new DataInputStream(socket.getInputStream()));
            client.setOutputStream(new DataOutputStream(socket.getOutputStream()));
            client.setKey(socket.getInetAddress().toString().substring(1));
            IuabcServerSocket.clientsMap.put(client.getKey(), client);

            // 保存连接工控机的相关信息
            saveIPCInfo(client.getKey());

            System.out.println("a client connected!");
            System.out.println(IuabcServerSocket.clientsMap);
            return client;
        } catch (IOException e) {
            client.logout();
        }
        return null;
    }

    /**
     * 发送数据
     *
     * @param str
     */
    public void send(String str) {
        try {
            outputStream.write(str.getBytes());
        } catch (IOException e) {
            logout();
        }
    }

    /**
     * 接收数据
     *
     * @return
     * @throws IOException
     */
    public String receive()  {
        try {
            byte[] bytes = new byte[1024];
            inputStream.read(bytes);
            String info = new String(bytes, "utf-8");
            System.out.println(info);
            return info;
        } catch (IOException e) {
            logout();
        }
        return null;
    }

    /**
     * 登出操作, 关闭各种流
     */
    public void logout() {
        if (IuabcServerSocket.clientsMap.containsKey(key)) {
            IuabcServerSocket.clientsMap.remove(key);
            deleteIPCInfo(key);
        }

        System.out.println(IuabcServerSocket.clientsMap);
        try {
            socket.shutdownOutput();
            socket.shutdownInput();
        } catch (IOException e) {
            try {
                throw new SocketException("关闭输入输出异常");
            } catch (SocketException e1) {
                e1.printStackTrace();
            }
        } finally {
            try {
                socket.close();
            } catch (IOException e) {
                try {
                    throw new SocketException("关闭socket异常");
                } catch (SocketException e1) {
                    e1.printStackTrace();
                }
            }
        }
    }

    /**
     * 发送数据包, 判断数据连接状态
     *
     * @return
     */
    public boolean isSocketClosed() {
        try {
            socket.sendUrgentData(1);
            return false;
        } catch (IOException e) {
            return true;
        }
    }

    @Override
    public void run() {
        // 每过5秒连接一次客户端
        while (true) {
            try {
                TimeUnit.SECONDS.sleep(5);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            if (isSocketClosed()) {
                System.out.println("关闭");
                logout();
                break;
            }
        }

    }

    @Override
    public String toString() {
        return "Client{" +
                "socket=" + socket +
                ", inputStream=" + inputStream +
                ", outputStream=" + outputStream +
                ", key='" + key + '\'' +
                '}';
    }


    /**
     * 接受处理消息
     */
    public void recieveMessage() {
        try {
            while (!isSocketClosed()) {
                byte[] bytes = new byte[1024];
                inputStream.read(bytes);
                String info = new String(bytes, "utf-8").trim();

                // 处理json格式的字符串，去掉中间空格回车等。
//                String data = JSON.toJSONString(info);

//                JSONObject jsonObject = JSONObject.parseObject(info);
//                Workshop workshop = new Workshop();
//                workshop.setHeight(jsonObject.getFloat("height"));
//                workshop.setWidth(jsonObject.getFloat("width"));
//                workshop.setLength(jsonObject.getFloat("length"));
//                clientSocket.workshopService.create(workshop);
//                workshopService.create(workshop);

                RunningData runningData = String2RunningData(info);
                if (runningData != null) {
                    clientSocket.runningDataService.create(runningData);
                    System.out.println(info);
                } else {
                    System.out.println("数据格式错误或信息为空");
                }
            }
        } catch (IOException e) {
            System.out.println("客户端已断开");
//            logout();
        }
    }

    /**
     * 实时运行数据JSON字符串转对象
     * @param str
     * @return
     */
    public static RunningData String2RunningData (String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        RunningData runningData = null;
        try {
            JSONObject jsonObject = JSONObject.parseObject(str);
            int status = jsonObject.getInteger("status");
            if (status == 1) {
                runningData = new RunningData();
                JSONObject data = jsonObject.getJSONObject("data");

                if (data != null) {
                    runningData.setCraneId(data.getLong("craneId"));

                    // 大车相关信息
                    JSONObject cart = data.getJSONObject("cart");
                    if (cart != null) {
                        runningData.setCartSpeed(cart.getFloat("speed"));
                        runningData.setCartPosition(cart.getFloat("position"));
                        runningData.setCartLevel(cart.getInteger("level"));
                        runningData.setCartDirection(cart.getInteger("direction"));
                    }

                    // 小车相关信息
                    JSONObject crab = data.getJSONObject("crab");
                    if (crab != null) {
                        runningData.setCrabSpeed(crab.getFloat("speed"));
                        runningData.setCrabPosition(crab.getFloat("position"));
                        runningData.setCrabLevel(crab.getInteger("level"));
                        runningData.setCrabDirection(crab.getInteger("direction"));
                    }

                    // 起升机构相关信息
                    JSONObject hoist = data.getJSONObject("hoist");
                    if (hoist != null) {
                        runningData.setHoistSpeed(hoist.getFloat("speed"));
                        runningData.setHoistPosition(hoist.getFloat("position"));
                        runningData.setHoistLevel(hoist.getInteger("level"));
                        runningData.setHoistDirection(hoist.getInteger("direction"));
                    }

                    runningData.setWorkload(data.getFloat("workload"));

                    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
                    try {
                        runningData.setCreateTime(format.parse(data.getString("createTime")));
                    } catch (ParseException e) {
                        e.printStackTrace();
                    }
                }
            }
        } catch (Exception e) {
            System.out.println("数据格式错误！");
        }

        return runningData;
    }


    /**
     * 保存工控机连接信息
     * @param ip 工控机IP地址
     */
    private static void saveIPCInfo(String ip) {
        IpcInfo ipc = clientSocket.ipcInfoService.findByIp(ip);
        if (ipc == null) {
            IpcInfo ipcInfo = new IpcInfo();
            ipcInfo.setIpcIp(ip);
            ipcInfo.setConnectTime(new Date());
            ipcInfo.setCraneId(1L);
            clientSocket.ipcInfoService.create(ipcInfo);
        } else {
            ipc.setConnectTime(new Date());
            clientSocket.ipcInfoService.update(ipc);
        }
    }

    /**
     * 断开时更改数据表中记录状态
     * @param ip 工控机ip地址
     */
    private static void deleteIPCInfo(String ip) {
        IpcInfo ipc = clientSocket.ipcInfoService.findByIp(ip);
        if (ipc != null) {
            // 客户端断开后5s才logout，所以此处工控机的断开时间需要减5s
            Date date = new Date();
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            calendar.add(Calendar.SECOND, -5);
            ipc.setDisconnectTime(calendar.getTime());

            // 改变工控机记录是否被删除的状态
            ipc.setDeleted(1);
            clientSocket.ipcInfoService.update(ipc);
        }
    }
}

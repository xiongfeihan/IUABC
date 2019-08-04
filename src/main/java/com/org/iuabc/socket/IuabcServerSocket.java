package com.org.iuabc.socket;

import lombok.Data;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * Author: Xiongfei Han
 * Date : 2019/8/1 10:10
 */
@Component
@Data
@PropertySource("classpath:socket.properties")
public class IuabcServerSocket {

    @Value("${servers.port}")
    private Integer port;
    private boolean started;
    private ServerSocket ss;
    public static ConcurrentHashMap<String, ClientSocket> clientsMap = new ConcurrentHashMap<>();
    private ExecutorService executorService = Executors.newCachedThreadPool();

    public static void main(String[] args) {
        new IuabcServerSocket().start(10086);
    }

    public void start() {
        start(null);
    }

    public void start(Integer port) {
        try {
            ss = new ServerSocket(port == null ? this.port : port);
            started = true;
            System.out.println("端口已开启,占用10086端口号....");
        } catch (Exception e) {
            System.out.println("端口使用中....");
            System.out.println("请关掉相关程序并重新运行服务器！");
            e.printStackTrace();
            System.exit(0);
        }

        try {
            while (started) {
                Socket socket = ss.accept();
                socket.setKeepAlive(true);
                ClientSocket register = ClientSocket.register(socket);
                register.recieveMessage();
                if (register != null) {
                    executorService.submit(register);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                ss.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

}

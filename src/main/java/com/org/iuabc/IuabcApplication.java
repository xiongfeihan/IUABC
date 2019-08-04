package com.org.iuabc;

import com.org.iuabc.socket.IuabcServerSocket;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

@SpringBootApplication
public class IuabcApplication {

    public static void main(String[] args) {
//        SpringApplication.run(IuabcApplication.class, args);
        ApplicationContext context = SpringApplication.run(IuabcApplication.class, args);
        context.getBean(IuabcServerSocket.class).start();
    }

}

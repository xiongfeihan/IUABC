package com.org.iuabc.socket;

import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.*;

/**
 * Author: Xiongfei Han
 * Date : 2019/8/4 11:20
 */
@SpringBootTest
@RunWith(SpringRunner.class)
@Slf4j
public class ClientSocketTest {

    @Test
    public void string2RunningData() {
        String str = "{\n" +
                "\"status\":1,\"data\":{\"craneId\":1,\"cart\":{\"speed\":1.22,\"position\":10.56,\n" +
                "\"level\":1,\"direction\":1},\n" +
                "\"crab\":{\"speed\":2.44,\n" +
                "\"position\":5.23,\"level\":2,\"direction\":1},\"hoist\":{\n" +
                "\"speed\":9.45,\n" +
                "\"position\":8.45,\"level\":1,\n" +
                "\"direction\":-1},\"workload\":2.125,\n" +
                "\"createTime\":\"2019-08-04 13:37:50\"}\n" +
                "}";
//        System.out.println(ClientSocket.String2RunningData(str));
    }
}
package com.org.iuabc.service.impl;

import com.org.iuabc.entity.RunningData;
import com.org.iuabc.service.RunningDataService;
import lombok.extern.slf4j.Slf4j;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.*;

/**
 * Author: Xiongfei Han
 * Date : 2019/6/18 21:47
 */
@SpringBootTest
@RunWith(SpringRunner.class)
@Slf4j
public class RunningDataServiceImplTest {

    @Autowired
    private RunningDataService runningDataService;

    @Test
    public void findDataById() {
        RunningData result = runningDataService.findDataById(1L);
        log.info("[查询数据] result = {}", result);
        Assert.assertNotNull(result);
    }

    @Test
    public void create() {
        RunningData data = new RunningData();
        data.setCartSpeed(2.34F);
        data.setCartLevel(2);
        data.setCartPosition(40F);
        data.setCrabSpeed(1.23F);
        data.setCrabPosition(20F);
        data.setCrabLevel(1);
        data.setHoistSpeed(3.32F);
        data.setHoistPosition(4.67F);
        data.setHoistLevel(3);
        data.setCraneId(1L);
        RunningData result = runningDataService.create(data);
        log.info("[创建运行数据] result = {}", result);
        Assert.assertNotNull(result);
    }
}
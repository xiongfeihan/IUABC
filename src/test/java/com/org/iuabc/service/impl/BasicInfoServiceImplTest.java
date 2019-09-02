package com.org.iuabc.service.impl;

import com.org.iuabc.entity.BasicInfo;
import com.org.iuabc.entity.RunningData;
import com.org.iuabc.service.BasicInfoService;
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
 * Date : 2019/9/2 18:56
 */
@SpringBootTest
@RunWith(SpringRunner.class)
@Slf4j
public class BasicInfoServiceImplTest {

    @Autowired
    private BasicInfoService basicInfoService;

    @Test
    public void findById() {
        BasicInfo result = basicInfoService.findById(1L);
        log.info("[查询数据] result = {}", result);
        Assert.assertNotNull(result);
    }
}
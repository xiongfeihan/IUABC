package com.org.iuabc.service.impl;

import com.org.iuabc.entity.PathPlan;
import com.org.iuabc.service.PathPlanService;
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
 * Date : 2019/11/27 16:10
 */
@SpringBootTest
@RunWith(SpringRunner.class)
@Slf4j
public class PathPlanServiceImplTest {

    @Autowired
    private PathPlanService pathPlanService;

    @Test
    public void findLatestPlan() {
        PathPlan pathPlan = pathPlanService.findLatestPlan(1L);
        log.info("[路径id] id={}", pathPlan.getPathId());
        Assert.assertNotNull(pathPlan);
    }
}
package com.org.iuabc.service.impl;

import com.org.iuabc.entity.PathCoordinate;
import com.org.iuabc.service.PathCoordinateService;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

import static org.junit.Assert.*;

/**
 * Author: Xiongfei Han
 * Date : 2019/11/27 15:59
 */
@SpringBootTest
@RunWith(SpringRunner.class)
@Slf4j
public class PathCoordinateServiceImplTest {

    @Autowired
    private PathCoordinateService pathCoordinateService;

    @Test
    public void getPath() {
        List<PathCoordinate> list = pathCoordinateService.getPath(1L);
        log.info("[规划路径] list={}", list);
    }
}
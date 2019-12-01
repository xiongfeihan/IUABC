package com.org.iuabc.utils;

import java.util.Random;

/**
 * Author: Xiongfei Han
 * Date: 2018/12/31 19:19
 * Version 1.0
 */
public class KeyUtil {

    /**
     * 生成随机主键
     * 格式：时间 + 随机数（6位）
     * @return
     */
    public static synchronized String getUniqueKey(){
        Random random = new Random();
        Integer number = random.nextInt(900000) + 100000;
        return System.currentTimeMillis() + String.valueOf(number);
    }

    public static synchronized Long getUniqueKeyByDate() {
        return System.currentTimeMillis();
    }

}

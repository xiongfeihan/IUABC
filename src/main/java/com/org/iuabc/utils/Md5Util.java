package com.org.iuabc.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.stream.IntStream;

/**
 * Author: Shengjie Si
 * Date: 2019/8/30 21:33
 * Version: 1.0
 */
public class Md5Util {
    /**
     * 16进制字符
     */
    private static String[] chars = {"0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"};

    /**
     * 将普通字符串用md5加密，并转化为16进制字符串
     */
    public static String StringInMd5(String str) {

        // 消息签名（摘要）
        MessageDigest md5;
        try {
            // 参数代表的是算法名称
            md5 = MessageDigest.getInstance("md5");
            byte[] result = md5.digest(str.getBytes());
            StringBuilder sb = new StringBuilder(32);
            // 将结果转为16进制字符  0~9 A~F
            // 一个字节对应两个字符
            // 取得高位
            // 取得低位
            IntStream.range(0, result.length).forEach(i -> {
                byte x = result[i];
                int h = 0x0f & (x >>> 4);
                int l = 0x0f & x;
                sb.append(chars[h]).append(chars[l]);
            });
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
}

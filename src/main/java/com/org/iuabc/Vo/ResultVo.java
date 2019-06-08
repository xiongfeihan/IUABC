package com.org.iuabc.Vo;

import lombok.Data;

/**
 * Author: Xiongfei Han
 * Date: 2019/4/13 10:32
 * Version 1.0
 */
@Data
public class ResultVo<T> {

    // 提示码
    private Integer code;

    // 提示信息
    private String msg;

    // 返回内容
    private T data;
}

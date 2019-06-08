package com.org.iuabc.DTO;

import com.org.iuabc.entity.Cart;
import com.org.iuabc.entity.Crab;
import com.org.iuabc.entity.Hoist;
import lombok.Data;

import java.util.Date;

/**
 * Author: Xiongfei Han
 * Date: 2019/4/13 10:56
 * Version 1.0
 */
@Data
public class IndustrialComputerResponseDto {

    // 控制命令的响应数据
    private String TYPE;

    // 响应时间
    private Long DATE;

    // 响应编号
    private Integer NUM;

    // 子编号
    private Integer SUBNUM;

    // 错误码
    private Integer ERRNUM;

    // 大车状态
    private Cart CART;

    // 小车状态
    private Crab CRAB;

    // 主起升状态
    private Hoist HOIST;

    // 负载值
    private Double LOAD;
}

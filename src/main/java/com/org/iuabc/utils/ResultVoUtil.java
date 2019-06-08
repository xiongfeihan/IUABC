package com.org.iuabc.utils;

import com.org.iuabc.Vo.ResultVo;

/**
 * Author: Xiongfei Han
 * Date: 2018/12/30 18:55
 * Version 1.0
 */
public class ResultVoUtil {

    @SuppressWarnings("unchecked")
    public static ResultVo success(Object object){
        ResultVo resultVo = new ResultVo();
        resultVo.setCode(0);
        resultVo.setMsg("成功");
        resultVo.setData(object);
        return resultVo;
    }

    public static ResultVo success(){
        return success(null);
    }

    public static ResultVo error(Integer code, String msg){
        ResultVo resultVo = new ResultVo();
        resultVo.setCode(code);
        resultVo.setMsg(msg);
        return resultVo;
    }
}

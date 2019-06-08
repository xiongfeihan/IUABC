package com.org.iuabc.controller;

import com.org.iuabc.DTO.IndustrialComputerResponseDto;
import com.org.iuabc.Vo.ResultVo;
import com.org.iuabc.converter.ResponseForm2ResponseDtoConverter;
import com.org.iuabc.form.IndustrialComputerResponseForm;
import com.org.iuabc.utils.ResultVoUtil;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Author: Xiongfei Han
 * Date: 2019/4/13 10:20
 * Version 1.0
 */
@RestController
@RequestMapping("/contact")
public class ContactController {

    @PostMapping("/getInfo")
    public ResultVo getInfo(IndustrialComputerResponseForm response) {
        IndustrialComputerResponseDto responseDto = ResponseForm2ResponseDtoConverter.convert(response);
        return ResultVoUtil.success();
    }
}

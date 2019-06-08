package com.org.iuabc.converter;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.org.iuabc.DTO.IndustrialComputerResponseDto;
import com.org.iuabc.entity.Cart;
import com.org.iuabc.entity.Crab;
import com.org.iuabc.entity.Hoist;
import com.org.iuabc.form.IndustrialComputerResponseForm;

/**
 * Author: Xiongfei Han
 * Date: 2019/4/13 12:34
 * Version 1.0
 */
public class ResponseForm2ResponseDtoConverter {
    public static IndustrialComputerResponseDto convert(IndustrialComputerResponseForm responseForm) {
        Gson gson = new Gson();
        IndustrialComputerResponseDto responseDto = new IndustrialComputerResponseDto();
        responseDto.setTYPE(responseForm.getTYPE());
        responseDto.setDATE(responseForm.getDATE());
        responseDto.setNUM(responseForm.getNUM());
        responseDto.setSUBNUM(responseForm.getSUBNUM());
        responseDto.setERRNUM(responseForm.getERRNUM());

        responseDto.setCART(gson.fromJson(responseForm.getCART(), new TypeToken<Cart>(){}.getType()));
        responseDto.setCRAB(gson.fromJson(responseForm.getCRAB(), new TypeToken<Crab>(){}.getType()));
        responseDto.setHOIST(gson.fromJson(responseForm.getHOIST(), new TypeToken<Hoist>(){}.getType()));

        responseDto.setLOAD(responseForm.getLOAD());

        return responseDto;
    }
}

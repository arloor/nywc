package com.arloor.nywc.service;

import com.arloor.nywc.dao.DesignMapper;
import com.arloor.nywc.domain.Design;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.sql.Timestamp;
import java.util.Date;


@RequestMapping("/api/design")
@RestController
public class DesignController {

    @Autowired
    DesignMapper designMapper;

    @RequestMapping("/insert")
    public void insertImage(@RequestBody Design design){
        design.setSeconds(String.valueOf(new Date().getTime()));
        design.setUploadTime(new Timestamp(Long.parseLong(design.getSeconds())));
        designMapper.insertSelective(design);
    }


    @RequestMapping("/update")
    public void updateImage(@RequestBody Design design){
        designMapper.updateByPrimaryKeySelective(design);
    }

}

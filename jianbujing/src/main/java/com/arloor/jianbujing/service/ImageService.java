package com.arloor.jianbujing.service;

import com.arloor.jianbujing.dao.ImageDao;
import com.arloor.jianbujing.domain.Imageinfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;

@RestController
@RequestMapping("/api/image")
public class ImageService {
    @Autowired
    private ImageDao imageDao;


    @RequestMapping("/insert")
    public void insertImage(@RequestBody Imageinfo imageinfo){
        imageinfo.setSeconds(String.valueOf(new Date().getTime()));
        imageinfo.setUptime(new Timestamp(Long.parseLong(imageinfo.getSeconds())));
        imageDao.insert(imageinfo);
    }


    @RequestMapping("/update")
    public void updateImage(@RequestBody Imageinfo imageinfo){
        imageDao.update(imageinfo);
    }
}

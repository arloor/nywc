package com.arloor.jianbujing.service;

import com.arloor.jianbujing.dao.ImageDao;
import com.arloor.jianbujing.domain.Imageinfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/image")
public class ImageService {
    @Autowired
    private ImageDao imageDao;


    @RequestMapping("/insert")
    public void insertImage(@RequestBody Imageinfo imageinfo){
        imageDao.insert(imageinfo);
    }


    @RequestMapping("/update")
    public void updateImage(@RequestBody Imageinfo imageinfo){
        imageDao.update(imageinfo);
    }
}

package com.arloor.jianbujing.service;

import com.arloor.jianbujing.dao.ImageListDao;
import com.arloor.jianbujing.domain.Imageinfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/imagelist")
public class ImageListService {
    @Autowired
    private ImageListDao imageListDao;

    @RequestMapping("/selectpublic")
    public List<Imageinfo> selectPublic(){
        return imageListDao.selectPublic();
    }
}

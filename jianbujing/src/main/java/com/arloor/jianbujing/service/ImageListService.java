package com.arloor.jianbujing.service;

import com.arloor.jianbujing.dao.ImageListDao;
import com.arloor.jianbujing.domain.Imageinfo;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/imagelist")
public class ImageListService {
    @Autowired
    private ImageListDao imageListDao;

    @RequestMapping("/selectpublic")
    public List<Imageinfo> selectPublic(@RequestParam(defaultValue = "1") int start,@RequestParam(defaultValue = "7") int pageSize){
        int count=imageListDao.selectCountPublic();
        if(count<start){
            return null;
        }
        PageHelper.startPage(start, pageSize);
        List<Imageinfo> imageinfoList=imageListDao.selectPublic();
        return imageinfoList;
    }
}

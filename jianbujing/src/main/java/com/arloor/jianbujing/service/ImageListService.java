package com.arloor.jianbujing.service;

import com.arloor.jianbujing.dao.ImageListDao;
import com.arloor.jianbujing.domain.Imageinfo;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.LinkedList;
import java.util.List;

@RestController
@RequestMapping("/api/imagelist")
public class ImageListService {
    @Autowired
    private ImageListDao imageListDao;

    @RequestMapping("/selectpublic")
    public List<Imageinfo> selectPublic(
            @RequestParam(defaultValue = "1") int start,
            @RequestParam int pageSize,
            @RequestParam(defaultValue = "0") long largeseconds,
            @RequestParam(defaultValue = "0") long smallseconds
            ){
        List<Imageinfo> imageinfoList;
        //说明是第一次加载图片,直接找最新的
        if(largeseconds==0||smallseconds==0){
            PageHelper.startPage(start, pageSize);
            imageinfoList=imageListDao.selectPublicNewer(0);
            return imageinfoList;
        }else{//非第一次加载
            //首先找新于已有的
            PageHelper.startPage(start, pageSize);
            imageinfoList=imageListDao.selectPublicNewer(largeseconds);
            if(!imageinfoList.isEmpty()){
                return imageinfoList;
            }else {
                //再找旧于已有的
                PageHelper.startPage(start, pageSize);
                imageinfoList=imageListDao.selectPublicOlder(smallseconds);
                return imageinfoList;
            }

        }
    }
}

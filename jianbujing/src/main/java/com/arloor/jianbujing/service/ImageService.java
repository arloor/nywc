package com.arloor.jianbujing.service;

import com.arloor.jianbujing.dao.ImageDao;
import com.arloor.jianbujing.domain.Comment;
import com.arloor.jianbujing.domain.Imageinfo;
import com.arloor.jianbujing.model.ImageInfoWithComments;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

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

    @RequestMapping("/viewdetail")
    public ImageInfoWithComments viewDetail(@RequestBody Imageinfo imageinfo){
        Imageinfo targetImageInfo=imageDao.selectImageInfo(imageinfo);
        List<Comment> comments=imageDao.selectComments(imageinfo.getKey());
        ImageInfoWithComments imageInfoWithComments=new ImageInfoWithComments();
        imageInfoWithComments.setImageinfo(targetImageInfo);
        imageInfoWithComments.setComments(comments);
        return  imageInfoWithComments;
    }
}

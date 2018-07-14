package com.arloor.nywc.service;

import com.arloor.nywc.dao.CardMapper;
import com.arloor.nywc.dao.DesignMapper;
import com.arloor.nywc.dao.IWantMapper;
import com.arloor.nywc.domain.IWant;
import com.arloor.nywc.model.CardDetail;
import com.arloor.nywc.model.SingleCardDetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("/api/card")
public class CardService {
    @Autowired
    CardMapper cardMapper;
    @Autowired
    IWantMapper iWantMapper;
    @Autowired
    DesignMapper designMapper;

    @RequestMapping("/details")
    List<CardDetail> getCardDetails(@RequestParam(defaultValue = "0") long minSeconds,@RequestParam(defaultValue = "0") long maxSeconds){
        if(maxSeconds==0){
            return cardMapper.getNewestCardsDetails();
        }
        else return cardMapper.getCardsDetails(minSeconds,maxSeconds);
    }

    @RequestMapping("/getByTheme")
    public List<CardDetail> getCardDetails(@RequestParam String theme){
        return cardMapper.getCardsDetailsByTheme(theme);
    }

    @RequestMapping("/singleCardDetails")
    SingleCardDetail getSingleCardDetail(@RequestParam String dkey){
        SingleCardDetail singleCardDetail=cardMapper.getSingleCardDetail(dkey);
        singleCardDetail.getImageURLs().add(0,singleCardDetail.getImageURL());
        return singleCardDetail;
    }

    @RequestMapping("/iwant")
    void iwant(@RequestBody IWant iWant){
        iWant.setWantTime(new Date());
        iWantMapper.insertSelective(iWant);
        designMapper.addNumLike(iWant.getDkey());

    }

    @RequestMapping(value = "/iDontWant")
    String iDontWant(@RequestParam String dkey,@RequestParam String wantOpenId){
        designMapper.minusNumLike(dkey);
        return "删除的收藏记录数量"+iWantMapper.deleteByDkeyOpenId(dkey,wantOpenId);
    }
}

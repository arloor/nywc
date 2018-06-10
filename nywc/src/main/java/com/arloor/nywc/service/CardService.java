package com.arloor.nywc.service;

import com.arloor.nywc.dao.CardMapper;
import com.arloor.nywc.dao.IWantMapper;
import com.arloor.nywc.domain.IWant;
import com.arloor.nywc.model.CardDetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("/api/card")
public class CardService {
    @Autowired
    CardMapper cardMapper;
    @Autowired
    IWantMapper iWantMapper;

    @RequestMapping("/details")
    List<CardDetail> getCardDetails(@RequestParam(defaultValue = "0") long minSeconds,@RequestParam(defaultValue = "0") long maxSeconds){
        if(maxSeconds==0){
            return cardMapper.getNewestCardsDetails();
        }
        else return cardMapper.getCardsDetails(minSeconds,maxSeconds);
    }

    @RequestMapping("/singleCardDetails")
    CardDetail getSingleCardDetail(@RequestParam String dkey){
        return cardMapper.getSingleCardDetail(dkey);
    }

    @RequestMapping("/iwant")
    void iwant(@RequestBody IWant iWant){
        iWant.setWantTime(new Date());
        iWantMapper.insertSelective(iWant);
    }
}

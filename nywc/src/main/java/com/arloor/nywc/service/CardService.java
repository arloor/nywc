package com.arloor.nywc.service;

import com.arloor.nywc.dao.CardMapper;
import com.arloor.nywc.model.CardDetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/card")
public class CardService {
    @Autowired
    CardMapper cardMapper;

    @RequestMapping("/details")
    List<CardDetail> getCardDetails(){
        return cardMapper.getCardsDetails();
    }
}

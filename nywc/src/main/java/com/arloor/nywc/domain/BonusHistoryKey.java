package com.arloor.nywc.domain;

import java.util.Date;

public class BonusHistoryKey {
    private String openId;

    private Date changeTime;

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId;
    }

    public Date getChangeTime() {
        return changeTime;
    }

    public void setChangeTime(Date changeTime) {
        this.changeTime = changeTime;
    }
}
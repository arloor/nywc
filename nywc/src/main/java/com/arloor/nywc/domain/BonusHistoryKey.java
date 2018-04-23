package com.arloor.nywc.domain;

import java.util.Date;

public class BonusHistoryKey {
    private String openId;

    private Date time;

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}
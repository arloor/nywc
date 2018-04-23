package com.arloor.nywc.domain;

import java.util.Date;

public class IWant extends IWantKey {
    private Date wantTime;

    public Date getWantTime() {
        return wantTime;
    }

    public void setWantTime(Date wantTime) {
        this.wantTime = wantTime;
    }
}
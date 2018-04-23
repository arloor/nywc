package com.arloor.nywc.domain;

import java.util.Date;

public class Product {
    private String pname;

    private String dkey;

    private String pImageURL;

    private String pInfo;

    private String seconds;

    private Date releaseTime;

    private Boolean isNew;

    private Long numLike;

    private Long numDislike;

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getDkey() {
        return dkey;
    }

    public void setDkey(String dkey) {
        this.dkey = dkey;
    }

    public String getpImageURL() {
        return pImageURL;
    }

    public void setpImageURL(String pImageURL) {
        this.pImageURL = pImageURL;
    }

    public String getpInfo() {
        return pInfo;
    }

    public void setpInfo(String pInfo) {
        this.pInfo = pInfo;
    }

    public String getSeconds() {
        return seconds;
    }

    public void setSeconds(String seconds) {
        this.seconds = seconds;
    }

    public Date getReleaseTime() {
        return releaseTime;
    }

    public void setReleaseTime(Date releaseTime) {
        this.releaseTime = releaseTime;
    }

    public Boolean getIsNew() {
        return isNew;
    }

    public void setIsNew(Boolean isNew) {
        this.isNew = isNew;
    }

    public Long getNumLike() {
        return numLike;
    }

    public void setNumLike(Long numLike) {
        this.numLike = numLike;
    }

    public Long getNumDislike() {
        return numDislike;
    }

    public void setNumDislike(Long numDislike) {
        this.numDislike = numDislike;
    }
}
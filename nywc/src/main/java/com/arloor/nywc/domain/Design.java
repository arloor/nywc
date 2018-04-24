package com.arloor.nywc.domain;

import java.util.Date;

public class Design {
    private String dkey;

    private String openId;

    private String dname;

    private String imageURL;

    private String dstatus;

    private String dinfo;

    private String dTempInfo;

    private String seconds;

    private Date uploadTime;

    private String theme;

    private Integer numLike;

    private Long numDislike;

    public String getDkey() {
        return dkey;
    }

    public void setDkey(String dkey) {
        this.dkey = dkey;
    }

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname;
    }

    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    public String getDstatus() {
        return dstatus;
    }

    public void setDstatus(String dstatus) {
        this.dstatus = dstatus;
    }

    public String getDinfo() {
        return dinfo;
    }

    public void setDinfo(String dinfo) {
        this.dinfo = dinfo;
    }

    public String getdTempInfo() {
        return dTempInfo;
    }

    public void setdTempInfo(String dTempInfo) {
        this.dTempInfo = dTempInfo;
    }

    public String getSeconds() {
        return seconds;
    }

    public void setSeconds(String seconds) {
        this.seconds = seconds;
    }

    public Date getUploadTime() {
        return uploadTime;
    }

    public void setUploadTime(Date uploadTime) {
        this.uploadTime = uploadTime;
    }

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme;
    }

    public Integer getNumLike() {
        return numLike;
    }

    public void setNumLike(Integer numLike) {
        this.numLike = numLike;
    }

    public Long getNumDislike() {
        return numDislike;
    }

    public void setNumDislike(Long numDislike) {
        this.numDislike = numDislike;
    }
}
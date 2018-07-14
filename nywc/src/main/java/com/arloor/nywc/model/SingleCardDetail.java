package com.arloor.nywc.model;

import java.util.Date;
import java.util.List;

public class SingleCardDetail {
    private String dkey;
    private String dname;
    private String dinfo;
    private String imageURL;
    private List<String> imageURLs;
    private String nickName;
    private String avatarURL;
    private int numLike;
    private int numDislike;
    private Date uploadTime;
    private long seconds;
    private String theme;
    private List<DcommentModel> comments;

    public String getDkey() {
        return dkey;
    }

    public void setDkey(String dkey) {
        this.dkey = dkey;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname;
    }

    public String getDinfo() {
        return dinfo;
    }

    public void setDinfo(String dinfo) {
        this.dinfo = dinfo;
    }

    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    public List<String> getImageURLs() {
        return imageURLs;
    }

    public void setImageURLs(List<String> imageURLs) {
        this.imageURLs = imageURLs;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public int getNumLike() {
        return numLike;
    }

    public void setNumLike(int numLike) {
        this.numLike = numLike;
    }

    public int getNumDislike() {
        return numDislike;
    }

    public void setNumDislike(int numDislike) {
        this.numDislike = numDislike;
    }

    public Date getUploadTime() {
        return uploadTime;
    }

    public void setUploadTime(Date uploadTime) {
        this.uploadTime = uploadTime;
    }

    public long getSeconds() {
        return seconds;
    }

    public void setSeconds(long seconds) {
        this.seconds = seconds;
    }

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme;
    }

    public List<DcommentModel> getComments() {
        return comments;
    }

    public void setComments(List<DcommentModel> comments) {
        this.comments = comments;
    }

    public String getAvatarURL() {
        return avatarURL;
    }

    public void setAvatarURL(String avatarURL) {
        this.avatarURL = avatarURL;
    }
}

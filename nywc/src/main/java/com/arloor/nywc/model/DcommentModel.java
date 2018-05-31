package com.arloor.nywc.model;

import java.util.Date;

public class DcommentModel {

    private String nickName;

    private String avatarURL;

    private Integer dcid;

    private String dkey;

    private String openIdComm;

    private String dcomment;

    private String reply;

    private Boolean commentStatus;

    private Date comTime;

    private Date replyTime;

    private Integer numLike;

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public Integer getDcid() {
        return dcid;
    }

    public void setDcid(Integer dcid) {
        this.dcid = dcid;
    }

    public String getDkey() {
        return dkey;
    }

    public void setDkey(String dkey) {
        this.dkey = dkey;
    }

    public String getOpenIdComm() {
        return openIdComm;
    }

    public void setOpenIdComm(String openIdComm) {
        this.openIdComm = openIdComm;
    }

    public String getDcomment() {
        return dcomment;
    }

    public void setDcomment(String dcomment) {
        this.dcomment = dcomment;
    }

    public String getReply() {
        return reply;
    }

    public void setReply(String reply) {
        this.reply = reply;
    }

    public Boolean getCommentStatus() {
        return commentStatus;
    }

    public void setCommentStatus(Boolean commentStatus) {
        this.commentStatus = commentStatus;
    }

    public Date getComTime() {
        return comTime;
    }

    public void setComTime(Date comTime) {
        this.comTime = comTime;
    }

    public Date getReplyTime() {
        return replyTime;
    }

    public void setReplyTime(Date replyTime) {
        this.replyTime = replyTime;
    }

    public Integer getNumLike() {
        return numLike;
    }

    public void setNumLike(Integer numLike) {
        this.numLike = numLike;
    }

    public String getAvatarURL() {
        return avatarURL;
    }

    public void setAvatarURL(String avatarURL) {
        this.avatarURL = avatarURL;
    }
}

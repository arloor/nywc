package com.arloor.nywc.domain;

import java.util.Date;

public class PComment {
    private Integer pcid;

    private String pname;

    private String openIdComm;

    private String pcomment;

    private String reply;

    private Date comTime;

    private Date replyTime;

    private Integer numLike;

    public Integer getPcid() {
        return pcid;
    }

    public void setPcid(Integer pcid) {
        this.pcid = pcid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getOpenIdComm() {
        return openIdComm;
    }

    public void setOpenIdComm(String openIdComm) {
        this.openIdComm = openIdComm;
    }

    public String getPcomment() {
        return pcomment;
    }

    public void setPcomment(String pcomment) {
        this.pcomment = pcomment;
    }

    public String getReply() {
        return reply;
    }

    public void setReply(String reply) {
        this.reply = reply;
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
}
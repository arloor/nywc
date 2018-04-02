package com.arloor.jianbujing.domain;


public class Comment {

  private String key;
  private String commentopenid;
  private String nickName;
  private String comment;
  private String reply;
  private java.sql.Timestamp commenttime;
  private java.sql.Timestamp replytime;


  public String getKey() {
    return key;
  }

  public void setKey(String key) {
    this.key = key;
  }


  public String getCommentopenid() {
    return commentopenid;
  }

  public void setCommentopenid(String commentopenid) {
    this.commentopenid = commentopenid;
  }

  public String getNickName() {
    return nickName;
  }

  public void setNickName(String nickName) {
    this.nickName = nickName;
  }

  public String getComment() {
    return comment;
  }

  public void setComment(String comment) {
    this.comment = comment;
  }


  public String getReply() {
    return reply;
  }

  public void setReply(String reply) {
    this.reply = reply;
  }


  public java.sql.Timestamp getCommenttime() {
    return commenttime;
  }

  public void setCommenttime(java.sql.Timestamp commenttime) {
    this.commenttime = commenttime;
  }


  public java.sql.Timestamp getReplytime() {
    return replytime;
  }

  public void setReplytime(java.sql.Timestamp replytime) {
    this.replytime = replytime;
  }

}

package com.arloor.jianbujing.domain;


public class UserInfo {

  private String openid;
  private String nickname;
  private java.sql.Timestamp lasttime;


  public String getOpenid() {
    return openid;
  }

  public void setOpenid(String openid) {
    this.openid = openid;
  }


  public String getNickname() {
    return nickname;
  }

  public void setNickname(String nickname) {
    this.nickname = nickname;
  }


  public java.sql.Timestamp getLasttime() {
    return lasttime;
  }

  public void setLasttime(java.sql.Timestamp lasttime) {
    this.lasttime = lasttime;
  }

}

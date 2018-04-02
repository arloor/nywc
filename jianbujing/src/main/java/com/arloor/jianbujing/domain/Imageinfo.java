package com.arloor.jianbujing.domain;


import java.sql.Timestamp;

public class Imageinfo {

  private String key;
  private String openId;
  private String nickName;
  private String imageURL;
  private String info;
  private java.sql.Timestamp uptime;
  private String ispublic;
  private String valid;

  public String getKey() {
    return key;
  }

  public void setKey(String key) {
    this.key = key;
  }

  public String getOpenId() {
    return openId;
  }

  public void setOpenId(String openId) {
    this.openId = openId;
  }

  public String getNickName() {
    return nickName;
  }

  public void setNickName(String nickName) {
    this.nickName = nickName;
  }

  public String getImageURL() {
    return imageURL;
  }

  public void setImageURL(String imageURL) {
    this.imageURL = imageURL;
  }

  public String getInfo() {
    return info;
  }

  public void setInfo(String info) {
    this.info = info;
  }

  public Timestamp getUptime() {
    return uptime;
  }

  public void setUptime(Timestamp uptime) {
    this.uptime = uptime;
  }

  public String getIspublic() {
    return ispublic;
  }

  public void setIspublic(String ispublic) {
    this.ispublic = ispublic;
  }

  public String getValid() {
    return valid;
  }

  public void setValid(String valid) {
    this.valid = valid;
  }
}

package com.arloor.nywc.domain;

public class MiaoshaActivity extends MiaoshaActivityKey {
    private Integer num;

    private Boolean isEnd;

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Boolean getIsEnd() {
        return isEnd;
    }

    public void setIsEnd(Boolean isEnd) {
        this.isEnd = isEnd;
    }

    @Override
    public String toString() {
        return "MiaoshaActivity{" +
                "pname="+getPname()+
                ",startTime="+getStartTime()+
                ",num=" + num +
                ", isEnd=" + isEnd +
                '}';
    }
}
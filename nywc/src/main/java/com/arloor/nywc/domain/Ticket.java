package com.arloor.nywc.domain;

public class Ticket {
    private String tname;

    private Boolean available;

    private String type;

    private Integer param0;

    private Double param1;

    private Integer param2;

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public Boolean getAvailable() {
        return available;
    }

    public void setAvailable(Boolean available) {
        this.available = available;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getParam0() {
        return param0;
    }

    public void setParam0(Integer param0) {
        this.param0 = param0;
    }

    public Double getParam1() {
        return param1;
    }

    public void setParam1(Double param1) {
        this.param1 = param1;
    }

    public Integer getParam2() {
        return param2;
    }

    public void setParam2(Integer param2) {
        this.param2 = param2;
    }
}
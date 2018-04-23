package com.arloor.nywc.domain;

public class BonusHistory extends BonusHistoryKey {
    private String operatiron;

    private Integer change;

    public String getOperatiron() {
        return operatiron;
    }

    public void setOperatiron(String operatiron) {
        this.operatiron = operatiron;
    }

    public Integer getChange() {
        return change;
    }

    public void setChange(Integer change) {
        this.change = change;
    }
}
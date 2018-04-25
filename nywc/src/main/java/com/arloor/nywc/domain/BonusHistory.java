package com.arloor.nywc.domain;

public class BonusHistory extends BonusHistoryKey {
    private String operatiron;

    private Integer numChange;

    public String getOperatiron() {
        return operatiron;
    }

    public void setOperatiron(String operatiron) {
        this.operatiron = operatiron;
    }

    public Integer getNumChange() {
        return numChange;
    }

    public void setNumChange(Integer numChange) {
        this.numChange = numChange;
    }
}
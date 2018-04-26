package com.arloor.nywc.miaoshatools;

import org.springframework.stereotype.Component;

import java.util.concurrent.ConcurrentHashMap;

@Component
public class MiaoShaStorage {
    private final ConcurrentHashMap<String,Integer> pnameStorageMap=new ConcurrentHashMap<>();

    public void setStorage(String pname,int storage){
        pnameStorageMap.put(pname,storage);
    }


    //同步的减库存操作
    public synchronized boolean checkAndDecremt(String pname){
        int storage=0;
        if((storage=pnameStorageMap.get(pname))==0){
            return false;
        }else {
            storage--;
            pnameStorageMap.put(pname,storage);
            return true;
        }
    }

    public void clear(){
        pnameStorageMap.clear();
    }
}

package com.example.demo.sdd.service;


import com.example.demo.entity.Stat;


import java.util.List;

public interface StatService {
    /*查询*/
    List<Stat> selectStat(String remitCardStatus);
}

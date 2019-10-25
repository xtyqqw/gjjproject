package com.example.demo.sdd.service;


import com.example.demo.entity.Stat;
import com.example.demo.entity.Pagination;


import java.util.List;

public interface StatService {
    /*查询*//*
    List<Stat> selectStat(String remitCardStatus);*/
    /*查询表*/
    List<Stat> selectStatAll(Pagination pagination);
    /*分页*/
    Integer findStat(Pagination pagination);
    /*查询单位登记号和证件号码*/
    Stat dimStat(Stat stat);
}

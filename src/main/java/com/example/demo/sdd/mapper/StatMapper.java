package com.example.demo.sdd.mapper;

import com.example.demo.entity.Stat;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface StatMapper {
    /*查询*/
    List<Stat> selectStat(String remitCardStatus);
}

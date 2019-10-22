package com.example.demo.xty.mapper;

import com.example.demo.entity.Account;
import com.example.demo.entity.Unit;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface XtyUnitMapper {
    Account findAccountById(String id);
    Unit findUnitByUnitId(String id);
    void updateUnit(Unit unit);
}

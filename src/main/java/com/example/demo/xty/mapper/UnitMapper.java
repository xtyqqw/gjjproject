package com.example.demo.xty.mapper;

import com.example.demo.entity.Account;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UnitMapper {
    Account findAccountById(String id);
}

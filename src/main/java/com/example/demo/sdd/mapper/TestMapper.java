package com.example.demo.sdd.mapper;

import com.example.demo.entity.Test;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TestMapper {
    /*查询*/
    List<Test> selectTest(String name);
}
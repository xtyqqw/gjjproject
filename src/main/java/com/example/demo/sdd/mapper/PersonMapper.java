package com.example.demo.sdd.mapper;

import com.example.demo.entity.Pagination;
import com.example.demo.entity.Person;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface PersonMapper {
    /*查询表*/
    List<Person> selectPersonAll(Pagination pagination);
    /*总条数*/
    Integer findPerson(Pagination pagination);
    /*添加*/
    Integer addPerson(Person person);
}

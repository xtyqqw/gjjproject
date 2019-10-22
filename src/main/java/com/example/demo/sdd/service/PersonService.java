package com.example.demo.sdd.service;

import com.example.demo.entity.Pagination;
import com.example.demo.entity.Person;

import java.util.List;

public interface PersonService {
    /*查询表*/
    List<Person> selectPersonAll(Pagination pagination);
    /*总条数*/
    Integer findPerson(Pagination pagination);
}

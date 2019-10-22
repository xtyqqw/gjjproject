package com.example.demo.sdd.service.impl;

import com.example.demo.entity.Pagination;
import com.example.demo.entity.Person;
import com.example.demo.sdd.mapper.PersonMapper;
import com.example.demo.sdd.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PersonServiceImpl implements PersonService {
    @Autowired
    private PersonMapper personMapper;
    @Override/*查询所有*/
    public List<Person> selectPersonAll(Pagination pagination){
        Integer page=pagination.getPage();
        Integer limit=pagination.getLimit();
        Integer startPage=(page - 1)* limit;
        pagination.setStartPage(startPage);
        List<Person> personList=personMapper.selectPersonAll(pagination);
        return personList;
    }
    @Override/*查询总条数*/
    public Integer findPerson(Pagination pagination){
        return personMapper.findPerson(pagination);
    }
    @Override/*添加*/
    public Integer addPerson(Person person){
        return personMapper.addPerson(person);
    }
}

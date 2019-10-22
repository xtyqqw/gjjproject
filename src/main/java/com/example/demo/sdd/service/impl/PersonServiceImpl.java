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
    @Override
    public List<Person> selectPersonAll(Pagination pagination){
        Integer page=pagination.getPage();
        Integer limit=pagination.getLimit();
        Integer starPage=(page - 1)* limit;
        pagination.setStartPage(starPage);
        List<Person> personList=personMapper.selectPersonAll(pagination);
        return personList;
    }
    @Override
    public Integer findPerson(Pagination pagination){
        return personMapper.findPerson(pagination);
    }
}

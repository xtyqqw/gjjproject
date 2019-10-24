package com.example.demo.sdd.service.impl;

import com.example.demo.entity.Pagination;
import com.example.demo.entity.Person;
import com.example.demo.entity.Test;
import com.example.demo.sdd.mapper.PersonMapper;
import com.example.demo.sdd.mapper.TestMapper;
import com.example.demo.sdd.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import sun.plugin.javascript.navig.LinkArray;

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
    @Override/*修改*/
    public Integer updatePerson(Person person){
        return personMapper.updatePerson(person);
    }
    @Override/*删除*/
    public Integer deletePerson(Integer personId){
        return personMapper.deletePerson(personId);
    }
    @Override/*根据名字和证件号码查询*/
    public Person dimPerson(Person person){
        return personMapper.dimPerson(person);
    }
    
}

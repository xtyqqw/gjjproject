package com.example.demo.sdd.controller;

import com.example.demo.entity.Pagination;
import com.example.demo.entity.Person;
import com.example.demo.sdd.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/persons")
public class PersonController {
    @Autowired
    private PersonService personService;
    @RequestMapping(value = "/pe")
    public String pe(){
        return "sd/test";
    }

    @RequestMapping(value = "/personList")
    @ResponseBody
    public Map<String,Object> list(Pagination pagination)throws Exception{
        List<Person> list=personService.selectPersonAll(pagination);
        Integer count=personService.findPerson(pagination);
        Map<String,Object> map=new HashMap<>();
        map.put("code","0");
        map.put("count",count);
        map.put("data",list);
        return map;
    }
}














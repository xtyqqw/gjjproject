package com.example.demo.sdd.controller;

import com.example.demo.entity.Pagination;
import com.example.demo.entity.Person;
import com.example.demo.sdd.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/persons")
public class PersonController {
    @Autowired
    private PersonService personService;
    @RequestMapping(value = "/totest")
    public String pe(){
        return "sd/test";
    }

    @RequestMapping(value = "/personList")/*查询表*/
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
    @RequestMapping(value = "/add")/*添加*/
    @ResponseBody
    public ModelAndView add(Person person){
        Integer flag=personService.addPerson(person);
        ModelAndView mv=new ModelAndView();
        if(flag==1){
            mv.setViewName("");
            return mv;
        }else {
            return null;
        }
    }
}














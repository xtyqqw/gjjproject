package com.example.demo.sdd.controller;

import com.example.demo.entity.Pagination;
import com.example.demo.entity.Person;
import com.example.demo.sdd.service.PersonService;
import com.example.demo.util.UUIDUtil;
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
        return "sd/person";
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
        person.setPersonRegister(UUIDUtil.getUUID());
        Integer flag=personService.addPerson(person);
        ModelAndView mv=new ModelAndView();
        if(flag==1){
            mv.setViewName("sd/person");
            return mv;
        }else {
            return null;
        }
    }
    @RequestMapping(value = "/update")/*修改*/
    @ResponseBody
    public ModelAndView updatePerson(Person person){
        person.setPersonRegister(UUIDUtil.getUUID());
        Integer updates=personService.updatePerson(person);
        ModelAndView mv=new ModelAndView();
        if(updates==1){
            personService.updatePerson(person);
            mv.setViewName("sd/person");
            return mv;
        }else {
            return null;
        }
    }
    @RequestMapping(value = "/delete")/*删除*/
    @ResponseBody
    public String delete(Integer personId){
        Integer flag=personService.deletePerson(personId);
        if(flag==1){
            return "删除成功";
        }else {
            return "删除失败";
        }

    }
    @RequestMapping(value = "/dim")/*按照名字和证件号码查询*/
    public ModelAndView dimPerson(Person person)throws Exception{
        ModelAndView mv = new ModelAndView();
        Person slist=personService.dimPerson(person);
        if(slist!=null){
            mv.addObject("slist",slist);
            mv.setViewName("sd/person");
            return mv;
        }else {
            mv.addObject("msg","可以直接登记");
            return mv;
        }
    }
}














package com.example.demo.sdd.controller;

import com.example.demo.entity.Test;
import com.example.demo.sdd.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/test")
public class TestController {
    @Autowired
    private TestService testService;

    @RequestMapping(value = "tt")
    public String aa(){
        return "sd/test1";
    }
    @RequestMapping(value = "/stest")
    @ResponseBody
    public Map<String,Object> selectTest(String name){
        Map<String,Object> map=new HashMap<>();
        List<Test> test=testService.selectTest("0");
        map.put("code","0");
        /*map.put("count",);*/
        map.put("data",test);
        return map;
    }
    @RequestMapping(value = "/")
    public ModelAndView selectTest(System name){
        ModelAndView mv=new ModelAndView();
        List<Test> tests=testService.selectTest("1");
        mv.addObject("tests",tests);
        mv.setViewName("test");
        return null;
    }
}

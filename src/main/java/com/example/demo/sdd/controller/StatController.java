package com.example.demo.sdd.controller;

import com.example.demo.entity.Pagination;
import com.example.demo.entity.Stat;
import com.example.demo.sdd.service.StatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/stat")
public class StatController {
    @Autowired
    private StatService statService;
    @RequestMapping(value = "/tostat")
    public String stat(){
        return "sd/yes";
    }
    /*@RequestMapping(value = "/stats")*//*查询已制卡*//*
    @ResponseBody
    public Map<String,Object> selectStat(String remitCardStatus){
        Map<String,Object> map=new HashMap<>();
        List<Stat> list=statService.selectStat("已制卡");
        map.put("code",0);
        map.put("data",list);
        return map;
    }*/
    @RequestMapping(value = "/s")/*查询表格*/
    @ResponseBody
    public Map<String,Object> list(Pagination pagination)throws Exception{
        List<Stat> stats=statService.selectStatAll(pagination);
        Integer count=statService.findStat(pagination);
        Map<String,Object> map=new HashMap<>();
        map.put("code","0");
        map.put("count",count);
        map.put("data",stats);
        return map;
    }
    @RequestMapping(value = "/dim")/*查询单位登记号和证件号码*/
    public ModelAndView dimStat(Stat stat)throws Exception{
        ModelAndView mv=new ModelAndView();
        Stat slist=statService.dimStat(stat);
        if(slist!=null){
            mv.addObject("slist",slist);
            mv.setViewName("sd/yes");
            return mv;
        }else {
            mv.addObject("msg","您输入错误");
            mv.setViewName("sd/yes");
            return mv;
        }
    }


}

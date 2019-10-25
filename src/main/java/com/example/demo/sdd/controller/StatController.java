package com.example.demo.sdd.controller;

import com.example.demo.entity.Stat;
import com.example.demo.sdd.service.StatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
    @RequestMapping(value = "/stats")/*查询已制卡*/
    @ResponseBody
    public Map<String,Object> selectStat(String remitCardStatus){
        Map<String,Object> map=new HashMap<>();
        List<Stat> list=statService.selectStat("已制卡");
        map.put("code",0);
        map.put("data",list);
        return map;
    }
}

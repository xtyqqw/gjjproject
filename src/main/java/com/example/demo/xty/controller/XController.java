package com.example.demo.xty.controller;

import com.example.demo.entity.Account;
import com.example.demo.entity.Unit;
import com.example.demo.xty.service.UnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @program: xController
 * @description:
 * @author: xty
 * @create: 2019/10/22 11:03
 **/
@Controller
@RequestMapping(value = "/account")
public class XController {
    @Autowired
    UnitService unitService;
    @RequestMapping(value = "/test")
    public String test(){
        return "sdd/test";
    }
    @GetMapping(value = "/findaccount")
    public ModelAndView findAccount(String id){
        ModelAndView mv = new ModelAndView();
//        Account account = unitService.findAccountById(id);
        Account account = new Account();
        account.setAccountId("123");
        mv.addObject("account",account);
        mv.setViewName("xty/test");
        return mv;
    }

    @GetMapping(value = "/findunit")
    public ModelAndView findUnit(String unitId){
        ModelAndView mv = new ModelAndView();
        unitId = "08d98fba56054c5ab8a011a7546a01ab";
        Unit unit = unitService.findUnitByUnitId(unitId);
        mv.addObject("unit",unit);
        mv.setViewName("xty/updateunit");
        return mv;
    }

    @PostMapping(value = "/updateunit")
    public ModelAndView updateUnit(Unit unit){
        ModelAndView mv = new ModelAndView();
        unitService.updateUnit(unit);
        mv.setViewName("xty/updateunit");
        return mv;
    }

}

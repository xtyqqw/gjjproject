package com.example.demo.xty.controller;

import com.example.demo.entity.Account;
import com.example.demo.entity.Unit;
import com.example.demo.xty.service.UnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
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

    /**
     * 查询account并将数据带回页面
     * @param id
     * @return
     */
    @GetMapping(value = "/findaccount")
    public ModelAndView findAccount(String id){
        ModelAndView mv = new ModelAndView();
        Account account = unitService.findAccountById(id);
//        Account account = new Account();
//        account.setAccountId("123");
        mv.addObject("account",account);
        mv.setViewName("xty/updateaccount");
        return mv;
    }

    @PostMapping(value = "/updateaccount")
    public ModelAndView updateAccount(Account account){
        ModelAndView mv = new ModelAndView();
        unitService.updateAccount(account);
        mv.setViewName("xty/updateaccount");
        return mv;
    }

    /**
     * 根据前台传来的userUnitId查询对应的单位信息
     * @param userUnitId
     * @return
     */
    @RequestMapping(value = "/findunit")
    public ModelAndView findUnit(String userUnitId){
        ModelAndView mv = new ModelAndView();
//        userUnitId = "08d98fba56054c5ab8a011a7546a01ab";
        Unit unit = unitService.findUnitByUnitId(userUnitId);
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

    @RequestMapping(value = "/tohome")
    public String tohome(){
        return "home";
    }


}

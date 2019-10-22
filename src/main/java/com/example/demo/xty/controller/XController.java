package com.example.demo.xty.controller;

import com.example.demo.xty.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
    AccountService accountService;
    @RequestMapping(value = "/test")
    public String test(){
        return "test";
    }
}

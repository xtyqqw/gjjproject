package com.example.demo.wy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @ClassName： LoginController
 * @Description： 跳转的controller
 * @Author： wy
 * @Date： 2019/10/22 19:24
 */
@Controller
@RequestMapping("/login")
public class LoginController {

    @RequestMapping("/toLoginunit")
    public String toLogin()throws Exception{
        return "loginunit";
    }

}

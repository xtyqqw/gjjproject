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

    /**
     * 跳转到单位登录页面
     * @return
     * @throws Exception
     */
    @RequestMapping("/toLoginunit")
    public String toLoginunit()throws Exception{
        return "loginunit";
    }

    /**
     * 跳转到单位注册页面
     * @return
     * @throws Exception
     */
    @RequestMapping("/toLogin")
    public String toLogin()throws Exception{
        return "login";
    }

    /**
     * 登录成功跳转到主页面
     * @return
     * @throws Exception
     */
    @RequestMapping("/toHome")
    public String toHome()throws Exception{
        return "home";
    }

}

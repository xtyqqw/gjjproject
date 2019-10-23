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
     * 单位注册成功跳转到单位登记页面
     * @return
     * @throws Exception
     */
    @RequestMapping("/toUnitregis")
    public String toUnitregis() throws Exception{
        return "unitregis";
    }

    /**
     * 登记成功跳转到开户页面
     * @return
     * @throws Exception
     */
    @RequestMapping("/toOpenacc")
    public String toOpenacc()throws Exception{
        return "openacc";
    }

    /**
     * 登录成功跳转到home页面
     * @return
     * @throws Exception
     */
    @RequestMapping("/toHome")
    public String toHome() throws Exception{
        return "home";
    }

    /**
     * 跳转到单位经办人网上授权
     * @return
     * @throws Exception
     */
    @RequestMapping("/toAuthorization")
    public String toAuthorization()throws Exception{
        return "authorization";
    }

    /**
     * 单位经办人网上授权跳转到单位经办人授权书
     * @return
     * @throws Exception
     */
    @RequestMapping("/toAuthsecces")
    public String toAuthsecces() throws Exception{
        return "authsecces";
    }

}

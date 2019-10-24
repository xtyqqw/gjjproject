package com.example.demo.wy.controller;

import com.example.demo.entity.Unit;
import com.example.demo.xty.service.UnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @ClassName： LoginController
 * @Description： 跳转的controller
 * @Author： wy
 * @Date： 2019/10/22 19:24
 */
@Controller
@RequestMapping("/login")
public class LoginController {
    @Autowired
    UnitService unitService;
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
    public ModelAndView toAuthorization(String userUnitId)throws Exception{
        ModelAndView mv = new ModelAndView();
        Unit unit = unitService.findUnitByUnitId(userUnitId);
        mv.addObject("unit",unit);
        mv.setViewName("authorization");
        return mv;
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

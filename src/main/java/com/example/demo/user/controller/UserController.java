package com.example.demo.user.controller;

import com.example.demo.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @ClassName： UserController
 * @Description： 用户Controller类
 * @Author： yzh
 * @Date： 2019/10/22 9:28
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    /**
     * 跳转至首页方法
     * @return
     * @throws Exception
     */
    @RequestMapping("/toLogin")
    public String toLogin() throws Exception{
        return "yzh/login";
    }
}

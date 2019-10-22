package com.example.demo.user.controller;

import com.example.demo.entity.Unit;
import com.example.demo.entity.User;
import com.example.demo.user.service.UnitService;
import com.example.demo.user.service.UserService;
import com.example.demo.util.UUIDUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.List;

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
    @Autowired
    private UnitService unitService;

    /**
     * 跳转至登录页方法
     * @return
     * @throws Exception
     */
    @RequestMapping("/toLogin")
    public String toLogin() throws Exception{
        return "yzh/login";
    }

    /**
     * 单位用户登录方法
     * @param user
     * @throws Exception
     */
    @RequestMapping("/login")
    public ModelAndView login(User user)throws Exception {
        ModelAndView mv = new ModelAndView();
        if (user.getUserName()!=null && user.getUserPwd()!=null){
            User user1 = userService.findUserByNameAndPwd(user);
            if (user1 != null) {
                if (user1.getUserStatus() == "认证") {
                    mv.addObject("userUnitId", user1.getUserUnitId());
                    mv.setViewName("yzh/home");
                    return mv;
                } else {
                    mv.setViewName("yzh/registerUnit");
                    return mv;
                }
            } else {
                mv.addObject("wrong", "用户名或密码错误！");
                mv.setViewName("yzh/login");
                return mv;
            }
        }else{
            mv.addObject("wrong", "用户名和密码不能为空！");
            mv.setViewName("yzh/login");
            return mv;
        }
    }

    /**
     * 单位用户注册
     * @param user
     * @return
     * @throws Exception
     */
    @RequestMapping("/register")
    public ModelAndView addUser(User user, Unit unit)throws Exception{
        ModelAndView mv = new ModelAndView();
        user.setUserId(UUIDUtil.getUUID());
        user.setUserCreatetime(new Date());
        user.setUserStatus("普通");

        user.setUserName("王五");
        user.setUserPwd("123456");
        user.setUserCertName("身份证");
        user.setUserCertNum("555555");
        user.setUserPhonenum("111");
        user.setUserEmail("11@qq.com");
        unit.setUnitName("王五集团");

        String uuid = UUIDUtil.getUUID();
        user.setUserUnitId(uuid);
        unit.setUnitId(uuid);
        List<User> userList = userService.findUserAll();
        for (User users:userList) {
            if (users.getUserCertNum().equals(user.getUserCertNum())){
                mv.addObject("wrong", "证件号码已存在，请直接登录");
                mv.setViewName("yzh/register");
                return mv;
            }
        }
        Integer flagUser = userService.addUser(user);
        Integer flagUnit = unitService.addUnit(unit);
        if (flagUser == 1 && flagUnit == 1) {
            mv.addObject("unit",unit);
            mv.addObject("user",user);
            mv.setViewName("yzh/openAnAccount");
            return mv;
        } else {
            mv.addObject("wrong", "注册失败，请检查输入信息");
            mv.setViewName("yzh/register");
            return mv;
        }
    }
}

package com.example.demo.user.controller;

import com.example.demo.entity.Account;
import com.example.demo.entity.Unit;
import com.example.demo.entity.User;
import com.example.demo.user.service.UnitService;
import com.example.demo.user.service.UserService;
import com.example.demo.util.RandomUtil;
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
                } else if(user1.getUserUnitId()!=null){
                    mv.addObject("userUnitId", user1.getUserUnitId());
                    mv.setViewName("yzh/openAccount");
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
        String uuid1 = UUIDUtil.getUUID();
        user.setUserId(uuid1);
        unit.setUnitUserId(uuid1);
        user.setUserCreatetime(new Date());
        user.setUserStatus("普通");

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
            mv.setViewName("yzh/login");
            return mv;
        } else {
            mv.addObject("wrong", "注册失败，请检查输入信息");
            mv.setViewName("yzh/register");
            return mv;
        }
    }

    /**
     *单位登记
     * @param unit
     * @return
     * @throws Exception
     */
    @RequestMapping("/unitReg")
    public ModelAndView unitReg(Unit unit)throws Exception {
        ModelAndView mv = new ModelAndView();
        if (unit.getUnitId() != null) {
            Unit unit1 = unitService.findUnitById(unit.getUnitId());
            unit1.setUnitAccountNum(RandomUtil.generateStr(9));
            Integer flag = unitService.updateUnit(unit1);
            if (flag == 1) {
                mv.addObject("msg","单位账户登记成功，请进行单位开户");
                mv.addObject("unit",unit1);
                mv.setViewName("yzh/openAccount");
                return mv;
            }else {
                mv.addObject("msg","登记失败，请检查单位信息");
                mv.setViewName("yzh/registerUnit");
                return mv;
            }
        }
        mv.addObject("msg","信息异常，请重新登录");
        mv.setViewName("yzh/login");
        return mv;
    }

    /**
     * 单位开户
     * @return
     * @throws Exception
     */
    @RequestMapping("/openAccount")
    public String openAccount(Account account)throws Exception{
        
        return null;
    }
}

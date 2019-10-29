package com.example.demo.user.controller;

import com.example.demo.entity.Account;
import com.example.demo.entity.Unit;
import com.example.demo.entity.User;
import com.example.demo.user.service.UserService;
import com.example.demo.util.MD5Utils;
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
    /**
     * 跳转至登录页方法
     * @return
     * @throws Exception
     */
    @RequestMapping("/toLogin")
    public String toLogin() throws Exception{
        return "loginunit";
    }

    /**
     *
     * @return
     * @throws Exception
     */
    @RequestMapping("/toReg")
    public String toReg()throws Exception{
        return "login";
    }
    /**
     * 单位用户登录方法
     * @param user
     * @throws Exception
     */
    @RequestMapping("/login")
    public ModelAndView login(User user)throws Exception {
        ModelAndView mv = new ModelAndView();
        String magic = "认证";
        if (user.getUserName()!=null && user.getUserPwd()!=null
                && user.getUserName()!="" && user.getUserPwd()!=""){
            user.setUserPwd(MD5Utils.md5Encrypt32Lower(user.getUserPwd()));
            User user1 = userService.findUserByNameAndPwd(user);
            if (user1 != null) {
                if (magic.equals(user1.getUserStatus())) {
                    Unit unit = userService.findUnitByUser(user1);
                    mv.addObject("user", user1);
                    mv.addObject("unit", unit);
                    mv.setViewName("home");
                    return mv;
                } else if(user1.getUserUnitId()!=null){
                    Unit unit = userService.findUnitByUser(user1);
                    if (unit.getUnitNum()!=null && unit.getUnitNum()!=""){
                        mv.addObject("wrong", "单位登记成功，请开户");
                        mv.addObject("unit",unit);
                        mv.setViewName("openacc");
                        return mv;
                    }
                    mv.addObject("unit", unit);
                    mv.setViewName("unitregis");
                    return mv;
                } else {
                    mv.setViewName("login");
                    return mv;
                }
            } else {
                mv.addObject("wrong", "用户名或密码错误！");
                mv.setViewName("loginunit");
                return mv;
            }
        }else{
            mv.addObject("wrong", "用户名和密码不能为空！");
            mv.setViewName("loginunit");
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
        user.setUserPwd(MD5Utils.md5Encrypt32Lower(user.getUserPwd()));

        String uuid = UUIDUtil.getUUID();
        user.setUserUnitId(uuid);
        unit.setUnitId(uuid);
        List<User> userList = userService.findUserAll();
        for (User users:userList) {
            if (users.getUserCertNum().equals(user.getUserCertNum())){
                mv.addObject("wrong", "证件号码已存在，请直接登录");
                mv.setViewName("loginunit");
                return mv;
            }
        }
        Integer flagUser = userService.addUser(user);
        Integer flagUnit = userService.addUnit(unit);
        if (flagUser == 1 && flagUnit == 1) {
            mv.addObject("wrong","注册成功，请注册单位信息！");
            mv.addObject("unit",unit);
            mv.setViewName("unitregis");
            return mv;
        } else {
            mv.addObject("wrong", "注册失败，请检查输入信息");
            mv.setViewName("login");
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
            unit.setUnitAccountNum(RandomUtil.generateStr(9));
            Integer flag = userService.updateUnit(unit);
            if (flag == 1) {
                mv.addObject("wrong","单位账户登记成功，请进行单位开户");
                mv.addObject("unit",unit);
                mv.setViewName("openacc");
                return mv;
            }else {
                mv.addObject("wrong","登记失败，请检查单位信息");
                mv.setViewName("unitregis");
                return mv;
            }
        }
        mv.addObject("wrong","信息异常，请重新登录");
        mv.setViewName("loginunit");
        return mv;
    }

    /**
     * 单位开户
     * @return
     * @throws Exception
     */
    @RequestMapping("/openAccount")
    public ModelAndView openAccount(Account account)throws Exception{
        ModelAndView mv = new ModelAndView();
        String accId = UUIDUtil.getUUID();
        account.setAccountId(accId);
        Integer flag = userService.addAccount(account);
        if (flag==1){
            User user = userService.findUserByAccountId(accId);
            user.setUserStatus("认证");
            userService.updateUserStatus(user);
            mv.addObject("user",user);
            mv.setViewName("home");
            return mv;
        }else {
            mv.addObject("wrong", "开户失败，请检查录入信息");
            mv.setViewName("openacc");
            return mv;
        }
    }
}

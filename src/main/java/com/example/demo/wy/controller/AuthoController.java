package com.example.demo.wy.controller;

import com.example.demo.entity.Unit;
import com.example.demo.entity.User;
import com.example.demo.util.MD5Utils;
import com.example.demo.util.UUIDUtil;
import com.example.demo.wy.service.AuthoService;
import com.example.demo.xty.service.UnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * @ClassName： AuthoController
 * @Description： 单位网上业务授权controller
 * @Author： wy
 * @Date： 2019/10/24 10:31
 */
@Controller
@RequestMapping("/wy")
public class AuthoController {
    @Resource
    private AuthoService authoService;



    /**
     * 添加单位其他经办人
     * @param user
     * @param unit
     * @return
     * @throws Exception
     */
    @RequestMapping("/addAutho")
    public ModelAndView addAutho(User user, Unit unit) throws Exception {
        ModelAndView mv = new ModelAndView();
        String uuid = UUIDUtil.getUUID();
        user.setUserId(uuid);
        user.setUserPwd(MD5Utils.md5Encrypt32Lower("123456"));
        user.setUserCreatetime(new Date());
        user.setUserUnitId(unit.getUnitId());
        user.setUserStatus("普通");
        Unit unit1 = authoService.findUnitById(unit);
        List<User> userList = authoService.findUserAll();
        for (User users : userList) {
            if (users.getUserCertNum().equals(user.getUserCertNum())) {
                mv.addObject("wrong", "证件号码已存在，请直接登录");
                mv.setViewName("authorization");
                return mv;
            }
        }
        List<User> users = authoService.findUserByUnitId(unit.getUnitId());
        if(users.size()>=3){
            mv.addObject("wrong","该单位经办人已达上限！");
            mv.setViewName("authorization");
            return mv;
        }else {
            Integer flagUser = authoService.addAutho(user);
            if (flagUser == 1) {
                mv.addObject("wrong", "注册成功");
                mv.addObject("user",user);
                mv.addObject("unit",unit1);
                mv.setViewName("authsecces");
                return mv;
            }else {
                return null;
            }
        }
    }

}

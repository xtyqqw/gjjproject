package com.example.demo.user.service;

import com.example.demo.entity.Unit;
import com.example.demo.entity.User;

import java.util.List;

/**
 * 用户service接口
 * @author： yzh
 */
public interface UserService {
    /**
     * 用户登录验证方法
     * @param user
     * @return user
     */
    User findUserByNameAndPwd(User user);
    /**
     * 对比所有用户id号码
     * @return List<User>
     */
    List<User> findUserAll();
    /**
     * 注册单位用户
     * @param user
     * @return Integer
     */
    Integer addUser(User user);
}

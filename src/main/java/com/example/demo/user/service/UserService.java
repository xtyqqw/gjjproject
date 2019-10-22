package com.example.demo.user.service;

import com.example.demo.entity.User;

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
}

package com.example.demo.wy.service;

import com.example.demo.entity.User;

import java.util.List;

/**
 * @ClassName： AuthoService
 * @Description： 单位网上业务授权
 * @Author： wy
 * @Date： 2019/10/24 10:26
 */
public interface AuthoService {

    /**
     * 添加其他经办人
     * @param user
     * @return
     */
    Integer addAutho(User user);

    /**
     * 对比所有用户id
     * @return
     */
    List<User> findUserAll();

}

package com.example.demo.wy.service;

import com.example.demo.entity.Unit;
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

    /**
     * 通过单位id查询
     * @param unit
     * @return
     */
    Unit findUnitById(Unit unit);

    /**
     * 根据单位id查询该单位所有的经办人
     * @param id
     * @return
     */
    List<User> findUserByUnitId(String id);

}

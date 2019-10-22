package com.example.demo.user.mapper;


import com.example.demo.entity.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 用户mapper接口
 * @author： yzh
 */
@Mapper
public interface UserMapper {
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

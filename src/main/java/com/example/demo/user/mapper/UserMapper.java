package com.example.demo.user.mapper;


import com.example.demo.entity.User;
import org.apache.ibatis.annotations.Mapper;

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
}

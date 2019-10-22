package com.example.demo.user.service.serviceimpl;

import com.example.demo.entity.User;
import com.example.demo.user.mapper.UserMapper;
import com.example.demo.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @ClassName： UserServiceImpl
 * @Description： 用户Service实现类
 * @Author： yzh
 * @Date： 2019/10/22 9:35
 */
@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;
    @Override
    public User findUserByNameAndPwd(User user) {
        return userMapper.findUserByNameAndPwd(user);
    }
}

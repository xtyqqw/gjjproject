package com.example.demo.user.service.serviceimpl;

import com.example.demo.entity.Account;
import com.example.demo.entity.Unit;
import com.example.demo.entity.User;
import com.example.demo.user.mapper.UserMapper;
import com.example.demo.user.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

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

    @Override
    public List<User> findUserAll() {
        return userMapper.findUserAll();
    }

    @Override
    public Integer addUser(User user) {
        return userMapper.addUser(user);
    }

    @Override
    public Integer addUnit(Unit unit) {
        return userMapper.addUnit(unit);
    }

    @Override
    public Unit findUnitById(String id) {
        return userMapper.findUnitById(id);
    }

    @Override
    public Integer updateUnit(Unit unit) {
        return userMapper.updateUnit(unit);
    }

    @Override
    public Integer addAccount(Account account) {
        return userMapper.addAccount(account);
    }

    @Override
    public User findUserByAccountId(String accountId) {
        return userMapper.findUserByAccountId(accountId);
    }

    @Override
    public Integer updateUserStatus(User user) {
        return userMapper.updateUserStatus(user);
    }

    @Override
    public Unit findUnitByUser(User user) {
        return userMapper.findUnitByUser(user);
    }
}

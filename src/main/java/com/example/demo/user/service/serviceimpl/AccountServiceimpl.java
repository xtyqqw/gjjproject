package com.example.demo.user.service.serviceimpl;

import com.example.demo.entity.Account;
import com.example.demo.entity.Unit;
import com.example.demo.entity.User;
import com.example.demo.user.mapper.AccountMapper;
import com.example.demo.user.service.AccountService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @ClassName： AccountServiceImpl
 * @Description： 单位账户Service实现类
 * @Author： yzh
 * @Date： 2019/10/23 14:21
 */
@Service
public class AccountServiceimpl implements AccountService {
    @Resource
    private AccountMapper accountMapper;
    @Override
    public Integer addAccount(Account account) {
        return accountMapper.addAccount(account);
    }

    @Override
    public User findUserByAccountId(String accountId) {
        return accountMapper.findUserByAccountId(accountId);
    }

    @Override
    public Integer updateUserStatus(User user) {
        return accountMapper.updateUserStatus(user);
    }

    @Override
    public Unit findUnitByUser(User user) {
        return accountMapper.findUnitByUser(user);
    }
}

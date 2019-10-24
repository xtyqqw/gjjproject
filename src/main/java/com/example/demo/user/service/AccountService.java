package com.example.demo.user.service;

import com.example.demo.entity.Account;
import com.example.demo.entity.Unit;
import com.example.demo.entity.User;

/**
 * 单位账户
 * @author： yzh
 */
public interface AccountService {
    /**
     * 单位开户
     * @param account
     * @return Integer
     */
    Integer addAccount(Account account);
    /**
     * 根据账户ID查找单位用户
     * @param accountId
     * @return
     */
    User findUserByAccountId(String accountId);
    /**
     * 根据ID修改账户状态
     * @param user
     * @return
     */
    Integer updateUserStatus(User user);

    /**
     * 跟据userId查询Unit对象
     * @param user
     * @return
     */
    Unit findUnitByUser(User user);
}

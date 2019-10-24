package com.example.demo.user.mapper;

import com.example.demo.entity.Account;
import com.example.demo.entity.Unit;
import com.example.demo.entity.User;
import org.apache.ibatis.annotations.Mapper;

/**
 * 单位账户
 * @author： yzh
 */
@Mapper
public interface AccountMapper {
    /**
     * 单位开户
     * @param account
     * @return Integer
     */
    Integer addAccount(Account account);

    /**
     * 根据单位账户ID查找单位用户
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

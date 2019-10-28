package com.example.demo.xty.mapper;

import com.example.demo.entity.Account;
import com.example.demo.entity.Unit;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface XtyUnitMapper {
    /**
     * 通过id查询账户信息
     * @param id
     * @return
     */
    Account findAccountByUnitId(String id);

    Account findAccountById(String accountId);

    /**
     * 通过unitId查询单位信息
     * @param id
     * @return
     */
    Unit findUnitByUnitId(String id);

    /**
     * 修改单位注册信息
     * @param unit
     */
    void updateUnit(Unit unit);

    /**
     * 修改单位账户信息
     * @param account
     */
    void updateAccount(Account account);
}

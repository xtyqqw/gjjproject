package com.example.demo.xty.service;

import com.example.demo.entity.Account;
import com.example.demo.entity.Unit;

public interface UnitService {
    /**
     * 通过单位id查找单位账户信息
     * @param id
     * @return
     */
    Account findAccountByUnitId(String id);

    /**
     * 通过unitId查找单位注册信息
     * @param unitId
     * @return
     */
    Unit findUnitByUnitId(String unitId);

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

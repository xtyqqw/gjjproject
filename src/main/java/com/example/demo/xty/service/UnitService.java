package com.example.demo.xty.service;

import com.example.demo.entity.Account;
import com.example.demo.entity.Unit;

public interface UnitService {
    Account findAccountById(String id);
    Unit findUnitByUnitId(String unitId);
    void updateUnit(Unit unit);
    void updateAccount(Account account);
}

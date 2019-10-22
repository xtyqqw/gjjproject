package com.example.demo.xty.service.impl;

import com.example.demo.entity.Account;
import com.example.demo.entity.Unit;
import com.example.demo.xty.mapper.XtyUnitMapper;
import com.example.demo.xty.service.UnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @program: AccountServiceImpl
 * @description: 单位账户service实现类
 * @author: xty
 * @create: 2019/10/22 10:18
 **/
@Service
public class AccountServiceImpl implements UnitService {
    @Autowired
    XtyUnitMapper unitMapper;
    @Override
    public Account findAccountById(String id) {
        return unitMapper.findAccountById(id);
    }

    @Override
    public Unit findUnitByUnitId(String unitId) {
        return unitMapper.findUnitByUnitId(unitId);
    }

    @Override
    public void updateUnit(Unit unit) {
        unitMapper.updateUnit(unit);
    }
}

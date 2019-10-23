package com.example.demo.user.service;

import com.example.demo.entity.Unit;
/**
 * 单位service接口
 * @author： yzh
 */
public interface UnitService {
    /**
     * 添加单位
     * @param unit
     * @return Integer
     */
    Integer addUnit(Unit unit);
    /**
     *根据单位ID查找单位
     * @param id
     * @return Unit
     */
    Unit findUnitById(String id);

    /**
     * 单位登记信息
     * @param unit
     * @return
     */
    Integer updateUnit(Unit unit);
}

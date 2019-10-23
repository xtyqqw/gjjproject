package com.example.demo.user.mapper;

import com.example.demo.entity.Unit;
import org.apache.ibatis.annotations.Mapper;

/**
 * 单位
 * @author： yzh
 */
@Mapper
public interface UnitMapper {
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

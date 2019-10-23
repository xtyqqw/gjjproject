package com.example.demo.user.service.serviceimpl;

import com.example.demo.entity.Unit;
import com.example.demo.user.mapper.UnitMapper;
import com.example.demo.user.service.UnitService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @ClassName： UnitServiceImpl
 * @Description： 单位service实现类
 * @Author： yzh
 * @Date： 2019/10/22 16:52
 */
@Service
public class UnitServiceImpl implements UnitService {
    @Resource
    private UnitMapper unitMapper;
    @Override
    public Integer addUnit(Unit unit) {
        return unitMapper.addUnit(unit);
    }

    @Override
    public Unit findUnitById(String id) {
        return unitMapper.findUnitById(id);
    }

    @Override
    public Integer updateUnit(Unit unit) {
        return unitMapper.updateUnit(unit);
    }
}

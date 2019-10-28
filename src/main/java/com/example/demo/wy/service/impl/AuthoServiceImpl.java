package com.example.demo.wy.service.impl;

import com.example.demo.entity.Unit;
import com.example.demo.entity.User;
import com.example.demo.wy.mapper.AuthoMapper;
import com.example.demo.wy.service.AuthoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @ClassName： AuthoServiceImpl
 * @Description： 单位网上业务授权实体类
 * @Author： wy
 * @Date： 2019/10/24 10:28
 */
@Service
public class AuthoServiceImpl implements AuthoService {

    @Resource
    private AuthoMapper authoMapper;

    @Override
    public Integer addAutho(User user) {
        return authoMapper.addAutho(user);
    }

    @Override
    public List<User> findUserAll() {
        return authoMapper.findUserAll();
    }

    @Override
    public Unit findUnitById(Unit unit) {
        return authoMapper.findUnitById(unit);
    }

    @Override
    public List<User> findUserByUnitId(String id) {
        return authoMapper.findUserByUnitId(id);
    }
}

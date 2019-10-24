package com.example.demo.sdd.service.impl;

import com.example.demo.entity.Stat;
import com.example.demo.sdd.mapper.StatMapper;
import com.example.demo.sdd.service.StatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StatServiceImpl implements StatService {
    @Autowired
    private StatMapper statMapper;
    @Override
    public List<Stat> selectStat(String remitCardStatus){
        return statMapper.selectStat(remitCardStatus);
    }
}

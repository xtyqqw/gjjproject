package com.example.demo.sdd.service.impl;

import com.example.demo.entity.Pagination;
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
    @Override
    public List<Stat> selectStatAll(Pagination pagination){
        Integer page=pagination.getPage();
        Integer limit=pagination.getLimit();
        Integer startPage=(page - 1)* limit;
        pagination.setStartPage(startPage);
        List<Stat> statlist=statMapper.selectStatAll(pagination);
        return statlist;
    }
    @Override
    public Integer findStat(Pagination pagination){
        return statMapper.findStat(pagination);
    }
}

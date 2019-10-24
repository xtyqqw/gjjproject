package com.example.demo.sdd.service.impl;

import com.example.demo.entity.Test;
import com.example.demo.sdd.mapper.TestMapper;
import com.example.demo.sdd.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TestServiceImpl implements TestService {
    @Autowired
    private TestMapper testMapper;
    /*查询*/
    @Override
    public List<Test> selectTest(String name){
        return testMapper.selectTest(name);
    }
}

package com.example.demo.sdd.service;

import com.example.demo.entity.Test;

import java.util.List;

public interface TestService {
    /*查询*/
    List<Test> selectTest(String name);
}

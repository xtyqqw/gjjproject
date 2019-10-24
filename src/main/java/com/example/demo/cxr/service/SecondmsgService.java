package com.example.demo.cxr.service;

import com.example.demo.entity.Secondmsg;

import java.util.List;

/**
 * @author 崔新睿
 * @data 2019/10/24 - 10:49
 */
public interface SecondmsgService {
    /**
     * 添加二级管理方法
     * @param secondmsg
     * @return
     */
    public int insterSec(Secondmsg secondmsg);

    /**
     * 修改二级管理方法
     * @param secondmsg
     * @return
     */
    public int updateSec(Secondmsg secondmsg);

    /**
     * 根据id删除二级管理
     * @param smsgId
     * @return
     */
    public int deleteSec(String smsgId);

    /**
     * 查询所有信息
     * @return
     */
    public List<Secondmsg> selectSecAll();

    /**
     * 根据id查询单个对象
     * @param smsgId
     * @return
     */
    public Secondmsg selectById(String smsgId);

}

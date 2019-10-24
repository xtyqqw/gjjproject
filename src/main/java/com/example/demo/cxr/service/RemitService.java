package com.example.demo.cxr.service;

import com.example.demo.entity.Remit;

import java.util.List;

/**
 * @author 崔新睿
 * @data 2019/10/24 - 14:14
 */
public interface RemitService {
    /**
     * 新增方法
     * @param remit
     * @return
     */
    public int insterRemit(Remit remit);

    /**
     * 修改方法
     * @param remit
     * @return
     */
    public int updateRemit(Remit remit);

    /**
     * 查询所有信息方法
     * @return
     */
    public List<Remit> selectRemitAll();

    /**
     * 通过id查询单个信息
     * @param remitId
     * @return
     */
    public Remit selectRemitById(String remitId);


}

package com.example.demo.cxr.mapper;

import com.example.demo.entity.CxrPagination;
import com.example.demo.entity.Remit;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @author 崔新睿
 * @data 2019/10/24 - 11:19
 */
@Mapper
public interface RemitMapper {
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
    public List<Remit> selectRemitAll(CxrPagination cxrPagination);

    /**
     * 通过职工编号查询单个信息
     * @param remitPersonNum
     * @return
     */
    public List<Remit> selectRemitById(String remitPersonNum);

    /**
     *  查询总条数
     * @return
     */
    public Integer findCount();

    /**
     * 根据id删除信息
     * @param remitId
     * @return
     */
    public int deleteById(String remitId);

}

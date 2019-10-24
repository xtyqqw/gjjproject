package com.example.demo.cxr.service.serviceimpl;

import com.example.demo.cxr.mapper.RemitMapper;
import com.example.demo.cxr.service.RemitService;
import com.example.demo.entity.Remit;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author 崔新睿
 * @data 2019/10/24 - 14:15
 */
@Service
public class RemitServiceImpl implements RemitService {
    @Resource
    private RemitMapper remitMapper;
    @Override
    public int insterRemit(Remit remit) {
        return remitMapper.insterRemit(remit);
    }

    @Override
    public int updateRemit(Remit remit) {
        return remitMapper.updateRemit(remit);
    }

    @Override
    public List<Remit> selectRemitAll() {
        return remitMapper.selectRemitAll();
    }

    @Override
    public Remit selectRemitById(String remitId) {
        return remitMapper.selectRemitById(remitId);
    }
}

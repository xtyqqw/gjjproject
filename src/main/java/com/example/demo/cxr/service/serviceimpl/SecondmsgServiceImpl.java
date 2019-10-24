package com.example.demo.cxr.service.serviceimpl;

import com.example.demo.cxr.mapper.SecondmsgMapper;
import com.example.demo.cxr.service.SecondmsgService;
import com.example.demo.entity.Secondmsg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author 崔新睿
 * @data 2019/10/24 - 10:52
 */
@Service
public class SecondmsgServiceImpl implements SecondmsgService {
    @Resource
    private SecondmsgMapper secondmsgMapper;
    @Override
    public int insterSec(Secondmsg secondmsg) {
        return secondmsgMapper.insterSec(secondmsg);
    }

    @Override
    public int updateSec(Secondmsg secondmsg) {
        return secondmsgMapper.updateSec(secondmsg);
    }

    @Override
    public int deleteSec(String smsgId) {
        return secondmsgMapper.deleteSec(smsgId);
    }

    @Override
    public List<Secondmsg> selectSecAll() {
        return secondmsgMapper.selectSecAll();
    }

    @Override
    public Secondmsg selectById(String smsgId) {
        return secondmsgMapper.selectById(smsgId);
    }
}

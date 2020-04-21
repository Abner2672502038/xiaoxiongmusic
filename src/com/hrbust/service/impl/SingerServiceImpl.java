package com.hrbust.service.impl;

import com.hrbust.bean.Singer;
import com.hrbust.mapper.SingerMapper;
import com.hrbust.service.SingerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SingerServiceImpl implements SingerService {
    @Autowired
    SingerMapper singerMapper;


    @Override
    public void insertSinger(String singerName, String sex, String introduction) {
        singerMapper.insertSinger(singerName, sex, introduction);

    }

    @Override
    public List<Singer> selectAll() {
        return singerMapper.selectAll();
    }

    @Override
    public void deleteSingerById(int id1) {
        singerMapper.deleteSingerById(id1);

    }
}

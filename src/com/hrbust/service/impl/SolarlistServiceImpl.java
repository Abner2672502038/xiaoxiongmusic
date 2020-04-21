package com.hrbust.service.impl;

import com.hrbust.bean.Song;
import com.hrbust.mapper.SolarlistMapper;
import com.hrbust.service.SolarlistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SolarlistServiceImpl implements SolarlistService {
    @Autowired
    SolarlistMapper solarlistMapper;

    @Override
    public List<Song> selectSolarAll() {
        return solarlistMapper.selectSolarAll();
    }

}

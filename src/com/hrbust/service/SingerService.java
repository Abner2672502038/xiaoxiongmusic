package com.hrbust.service;

import com.hrbust.bean.Singer;

import java.util.List;

public interface SingerService {

    void insertSinger(String singerName, String sex, String introduction);

    List<Singer> selectAll();

    void deleteSingerById(int id1);
}

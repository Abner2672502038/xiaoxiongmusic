package com.hrbust.service;

import com.hrbust.bean.Classify;

import java.util.List;

public interface ClassifyService {

    void insertClassify(String classify, String time);

    List<Classify> selectClassify();

    void updateClassify(int id, String updateclassify, String time);

    void deleteClassify(Integer id1);
}

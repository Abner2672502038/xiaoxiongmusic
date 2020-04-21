package com.hrbust.service.impl;

import com.hrbust.bean.Classify;
import com.hrbust.mapper.ClassifyMapper;
import com.hrbust.service.ClassifyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClassifyServiceImpl implements ClassifyService {
    @Autowired
    ClassifyMapper classifyMapper;

    @Override
    public void insertClassify(String classify, String time) {
        classifyMapper.insertClassify(classify, time);
    }

    @Override
    public List<Classify> selectClassify() {
        return classifyMapper.selectClassify();
    }

    @Override
    public void updateClassify(int id, String updateclassify, String time) {
        classifyMapper.updateClassify(id, updateclassify, time);

    }

    @Override
    public void deleteClassify(Integer id1) {
        classifyMapper.deleteClassify(id1);
    }
}

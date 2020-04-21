package com.hrbust.mapper;

import com.hrbust.bean.Classify;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ClassifyMapper {
    void insertClassify(String classify, String time);

    List<Classify> selectClassify();

    void updateClassify(@Param("id") int id, @Param("updateclassify") String updateclassify,@Param("time") String time);

    void deleteClassify(@Param("id1") Integer id1);
}

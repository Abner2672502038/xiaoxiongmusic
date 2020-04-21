package com.hrbust.mapper;

import com.hrbust.bean.Singer;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SingerMapper {
    void insertSinger(@Param("singerName") String singerName,@Param("sex") String sex, @Param("introduction") String introduction);

    List<Singer> selectAll();

    void deleteSingerById(int id1);
}

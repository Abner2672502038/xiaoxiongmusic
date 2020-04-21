package com.hrbust.mapper;

import com.hrbust.bean.Classify;
import com.hrbust.bean.Product;
import com.hrbust.bean.Result;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProductMapper {
    List<Classify> selectClassifyAll();

    void insertProduct(@Param("music_name") String music_name, @Param("music_title") String music_title,@Param("music_artist") String music_artist,@Param("music_type") int music_type,@Param("music_key") String music_key,@Param("music_link") String music_link,@Param("music_status") int music_status, @Param("s") String s);

    List<Result> selectProductALL();

}

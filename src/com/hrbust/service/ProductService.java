package com.hrbust.service;

import com.hrbust.bean.Classify;
import com.hrbust.bean.Product;
import com.hrbust.bean.Result;
import com.hrbust.bean.Song;

import java.util.List;

public interface ProductService {
    List<Classify> selectClassifyAll();

    void insertProduct(String music_name, String music_title, String music_artist, int music_type, String music_key, String music_link, int music_status,String s);

    List<Result> selectProductAll();

}

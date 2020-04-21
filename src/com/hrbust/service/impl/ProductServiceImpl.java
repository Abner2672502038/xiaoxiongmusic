package com.hrbust.service.impl;

import com.hrbust.bean.Classify;
import com.hrbust.bean.Product;
import com.hrbust.bean.Result;
import com.hrbust.mapper.ProductMapper;
import com.hrbust.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    ProductMapper productMapper;

    @Override
    public List<Classify> selectClassifyAll() {
        return  productMapper.selectClassifyAll();


    }

    @Override
    public void insertProduct(String music_name, String music_title, String music_artist, int music_type, String music_key, String music_link, int music_status,String s) {
        productMapper.insertProduct(music_name,music_title,music_artist,music_type,music_key,music_link,music_status,s);
    }

    @Override
    public List<Result> selectProductAll() {
        return productMapper.selectProductALL();
    }
}

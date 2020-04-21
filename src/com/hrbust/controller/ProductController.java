package com.hrbust.controller;

import com.hrbust.bean.Classify;
import com.hrbust.bean.Result;
import com.hrbust.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {
    @Autowired
    ProductService productService;

    @RequestMapping("/show")
    public String show(Model model) {
        List<Classify> list = productService.selectClassifyAll();
        model.addAttribute("list", list);
        return "product_add";
    }

    @RequestMapping("/insertproduct")
    public String insertProduct(String music_name, String music_title, String music_artist, String music_collection, String music_type, String music_key, String music_link, String productSingleImageList, String music_status) {
        if (music_type != "" && music_status != "") {
            int type = Integer.parseInt(music_type);
            int status = Integer.parseInt(music_status);
            productService.insertProduct(music_name, music_title, music_artist, type, music_key, music_link, status, productSingleImageList);
            return "forward:/product/selectall";
        }
        return "forward:/admin/home";
    }

    @RequestMapping("/selectall")
    public String selectAll(Model model) {
        List<Result> products = productService.selectProductAll();
        model.addAttribute("products", products);
        return "product-list";
    }
}

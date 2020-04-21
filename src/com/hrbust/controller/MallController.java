package com.hrbust.controller;

import com.alibaba.fastjson.JSONObject;
import com.hrbust.bean.BuyCar;
import com.hrbust.bean.Goods;
import com.hrbust.bean.MallProduct;
import com.hrbust.bean.User;
import com.hrbust.service.MallService;
import com.hrbust.util.DataUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.lang.reflect.Method;
import java.sql.SQLTransactionRollbackException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/mall")
public class MallController {
    @Autowired
    MallService mallService;

    @RequestMapping("/show")
    public String mallshow() {
        return "mall/mallshow";
    }

    @RequestMapping("/addproduct")
    public String addProduct() {
        return "mall/mall_add";
    }

    @ResponseBody
    @RequestMapping(value = "/uploadpicture", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    public String uploadPicture(@RequestParam MultipartFile file) {
        String fileName = file.getOriginalFilename();
        String savePath = "E:/WorkSpace/Inteljidea/personProject1/web/mallpicture/image" + fileName;
        JSONObject jsonObject = new JSONObject();
        try {
            file.transferTo(new File(savePath));
            jsonObject.put("success", true);
            jsonObject.put("fileName", fileName);
        } catch (IOException e) {
            e.printStackTrace();
            jsonObject.put("success", false);
        }
        return jsonObject.toJSONString();
    }

    @RequestMapping(value = "insertproduct", method = RequestMethod.POST)
    public String insertProduct(String product_isEnabled, String product_name, String product_price, String count, String productSingleImageList) {
        if (product_isEnabled == null || product_name == null || product_price == null || count == null || productSingleImageList == null) {
            return null;
        }
        mallService.insertProduct(new MallProduct(product_name, product_price, count, productSingleImageList, product_isEnabled, DataUtil.time()));
        return "mall/mall_add";
    }

    @RequestMapping("/selectall")
    public String selectAllProduct(Model model) {
        List<MallProduct> mallProducts = mallService.selectAll();
        model.addAttribute("mallProducts", mallProducts);
        return "mall/product_show";
    }

    @ResponseBody
    @RequestMapping(value = "/updatepassStatus", method = RequestMethod.POST)
    public String updateProductStatus(String id) {
        int parseInt = Integer.parseInt(id);
        mallService.updatepass(parseInt);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("data", true);
        return jsonObject.toJSONString();
    }

    @ResponseBody
    @RequestMapping(value = "/updatestopStatus", method = RequestMethod.POST)
    public String updateProductStatus2(String id) {
        int parseInt = Integer.parseInt(id);
        mallService.updatestop(parseInt);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("data", true);
        return jsonObject.toJSONString();
    }

    @ResponseBody
    @RequestMapping(value = "/deleteproduct", method = RequestMethod.POST)
    public String deleteproduct(String id) {
        int parseInt = Integer.parseInt(id);
        mallService.deleteproduct(parseInt);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("data", true);
        return jsonObject.toJSONString();
    }

    @RequestMapping("/selectallbystatus")
    public String selectAllByStatus(Model model) {
        List<MallProduct> mallProducts = mallService.selectAllByStatus();
        model.addAttribute("mallProducts", mallProducts);
        return "mall/mallshow";
    }

    @RequestMapping("/showcar")
    public String showcar(HttpSession httpSession,Model model) {
        User user = (User) httpSession.getAttribute("user");
        List<BuyCar> buyCars = mallService.selectBuyCar(user.getId());
        List<Goods> list = new ArrayList<>();
        int allmoney = 0;
        for (BuyCar buyCar : buyCars) {
            int money = 0;
            MallProduct mallProduct = mallService.selectProductById(buyCar.getProductId());
            int price = Integer.parseInt(mallProduct.getProductPrice());
            money = buyCar.getBuyCount() *price;
            list.add(new Goods(mallProduct,buyCar.getBuyCount(),money));
            allmoney += money;
        }
        List<MallProduct> mallProducts = mallService.selectAll();
        model.addAttribute("mallProducts", mallProducts);

        model.addAttribute("list", list);
        model.addAttribute("allmoney", allmoney);
        return "mall/buychar";
    }

    @RequestMapping("/buy/{id}")
    public String buy(@PathVariable String id, Model model, HttpSession httpSession) {
        User user = (User) httpSession.getAttribute("user");
        int parseInt = Integer.parseInt(id);
        MallProduct mallProduct = mallService.selectProductById(parseInt);
        List<BuyCar> buyCars = mallService.selectBuyCar(user.getId());
        int count = 0;
        model.addAttribute("mallProduct", mallProduct);
        model.addAttribute("buyCars", buyCars);
        for (BuyCar buyCar : buyCars) {
           count+= buyCar.getBuyCount();
        }
        model.addAttribute("count", count);
        return "mall/buy";
    }

    @ResponseBody
    @RequestMapping(value = "/insertbuycar",method = RequestMethod.POST)
    public String insertBuyCar(String id, String count, HttpSession httpSession) {
        User user= (User) httpSession.getAttribute("user");
        int i = Integer.parseInt(id);
        int parseInt = Integer.parseInt(count);
        BuyCar selectproduct = mallService.selectproduct(i, user.getId());
        if (selectproduct != null) {
            int addcount = selectproduct.getBuyCount() + parseInt;
            mallService.updateBuycar(i, addcount);

        } else {
            mallService.insertCar(i, parseInt,user.getId());
        }
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("success", true);
        return jsonObject.toJSONString();
    }

    @RequestMapping(value = "/pay/{money}",method = RequestMethod.GET)
    public String Pay(@PathVariable String money,Model model) {
        model.addAttribute("money", money);
        return "mall/wappay/pay";
    }

    @RequestMapping("/notify")
    public String notifypay() {
        return "mall/notify_url";
    }
    @RequestMapping("/answer")
    public String returnanswer() {
        return "mall/return_url";
    }

}

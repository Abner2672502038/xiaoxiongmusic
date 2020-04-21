package com.hrbust.controller;

import com.hrbust.bean.Classify;
import com.hrbust.service.ClassifyService;
import com.hrbust.util.DataUtil;
import com.mysql.fabric.xmlrpc.base.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.LinkedList;
import java.util.List;

@Controller
@RequestMapping("/classify")
public class ClassifyController {
    @Autowired
    ClassifyService classifyService;

    @RequestMapping("/show")
    public String classifyshow(Model model) {
        List<Classify> list = classifyService.selectClassify();
        model.addAttribute("list", list);
        return "classify";
    }

    @RequestMapping("/insertclassify")
    @ResponseBody
    public String insertClassify(String classify) {
        if (classify != null) {
            classifyService.insertClassify(classify, DataUtil.time());
            return "success";
        }
        return "error";
    }
    @ResponseBody
    @RequestMapping("/updateclassify")
    public String updateClassify(String id, String updateclassify) {
        if (id == "") {
            return "error";
        }
        Integer id1=Integer.parseInt(id);
        classifyService.updateClassify(id1, updateclassify, DataUtil.time());
        return "success";
    }

    @ResponseBody
    @RequestMapping("/deleteclassify")
    public String deleteClassify(String id) {
        if (id == "") {
            return "error";
        } else {
            Integer id1=Integer.parseInt(id);
            classifyService.deleteClassify(id1);
            return "success";

        }
    }
    @RequestMapping("/test")

    public String test() {
        return "testy";
    }
}

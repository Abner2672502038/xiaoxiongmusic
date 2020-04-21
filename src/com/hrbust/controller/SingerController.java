package com.hrbust.controller;

import com.hrbust.bean.Singer;
import com.hrbust.service.SingerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/singer")
public class SingerController {
    @Autowired
    SingerService singerService;

    @RequestMapping("/show")
    public String show(Model model) {
        List<Singer> singers = singerService.selectAll();
        model.addAttribute("singers", singers);
        return "singer";
    }

    @RequestMapping("/insertsinger")
    public String insertSinger(String singerName, String sex, String introduction) {
        if (singerName != null && sex != null && introduction != null) {
            singerService.insertSinger(singerName, sex, introduction);
        }
        return "forward:/singer/show";

    }

    @ResponseBody
    @RequestMapping("deletesinger")
    public String deletesinger(String id) {
        if (id != "") {
            int id1 = Integer.parseInt(id);
            singerService.deleteSingerById(id1);
            return "success";
        }
        return "error";

    }
}

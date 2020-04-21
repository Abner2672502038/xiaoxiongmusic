package com.hrbust.controller;

import com.alibaba.fastjson.JSONObject;
import com.hrbust.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;

@Controller
@RequestMapping("/upload")
public class UploadController {
    @Autowired
    AdminService adminService;
    @ResponseBody
    @RequestMapping(value = "/admin/uploadProductImage", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    public String uploadProductImage(@RequestParam MultipartFile uploadfile, @RequestParam String imageType, HttpSession session) {
        String filePath;
        String savePath;
        String fileName = uploadfile.getOriginalFilename();
        if ("single".equals(imageType)) {
            savePath = "/fileupload/image/" + fileName;
            filePath = "E:/WorkSpace/Inteljidea/personProject1/web/fileupload/image/" + fileName;
        } else {
            filePath = "E:/WorkSpace/Inteljidea/personProject1/web/fileupload/image/" + fileName;

        }
        JSONObject object = new JSONObject();

        try {
            uploadfile.transferTo(new File(filePath));
            object.put("success", true);
            object.put("fileName", fileName);
        } catch (IOException e) {
            e.printStackTrace();
            object.put("success", false);
        }
        return object.toJSONString();
    }
    @ResponseBody
    @RequestMapping(value = "/admin/uploadUserImage", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    public String uploadUserImage(@RequestParam MultipartFile uploadfile, @RequestParam String imageType, HttpSession session) {
        String filePath;
        String savePath;
        String fileName = uploadfile.getOriginalFilename();
        if ("single".equals(imageType)) {
            savePath = "/fileupload/img2/" + fileName;
            filePath = "E:/WorkSpace/Inteljidea/personProject1/web/fileupload/img2/" + fileName;
        } else {
            filePath = "E:/WorkSpace/Inteljidea/personProject1/web/fileupload/img2/" + fileName;

        }
        JSONObject object = new JSONObject();

        try {
            uploadfile.transferTo(new File(filePath));
            object.put("success", true);
            object.put("fileName", fileName);
        } catch (IOException e) {
            e.printStackTrace();
            object.put("success", false);
        }
        return object.toJSONString();
    }
}

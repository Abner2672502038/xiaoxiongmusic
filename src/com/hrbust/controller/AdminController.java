package com.hrbust.controller;

import com.hrbust.bean.Admin;
import com.hrbust.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    AdminService adminService;

    @RequestMapping("/login")
    public String login()
    {
        return "login";
    }

    @ResponseBody
    @RequestMapping("/dologin")
    public String dologin(String name, String password, HttpSession session) {
        if (name != null && password != null) {
            Admin admin = adminService.selectAdmin(name, password);
            if (admin != null) {
                session.setAttribute("admin", admin);
                return "success";
            } else {
                return "error";
            }
        }
        return "error";
    }
    @RequestMapping("/register")
    public String register() {
        return "register";
    }
    @ResponseBody
    @RequestMapping("/doregister")
    public String doregister(Admin admin) {
        if (admin != null) {
            adminService.addAdmin(admin);
        }
        return "success";
    }

    @RequestMapping("/home")
    public String home() {
        return "adminHome";
    }


    @RequestMapping("/test")
    public String test() {
        return "test";
    }

    @RequestMapping("/productadd")
    public String product_add() {
        return "product_add";
    }
}


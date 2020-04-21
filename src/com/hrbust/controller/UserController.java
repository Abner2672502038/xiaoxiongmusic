package com.hrbust.controller;

import com.google.common.base.Optional;
import com.hrbust.bean.User;
import com.hrbust.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@RequestMapping("/user")
@Controller
public class UserController {
    @Autowired
    UserService userService;


    @RequestMapping("/login")
    public String login() {
        return "fore/userlogin";
    }

    @RequestMapping("/register")
    public String register() {
        return "fore/userRefister";
    }
    @RequestMapping("/doregister")
    public String doregidter(String nickname,String account,String password) {
        Optional<String> nicknameOption =  Optional.of(nickname);
        Optional<String> accountOption = Optional.of(account);
        Optional<String> passwordOption = Optional.of(password);
        userService.insertUser(nicknameOption.get(), accountOption.get(), passwordOption.get());
        return "fore/userlogin";
    }
    @RequestMapping("/dologin")
    public String dologin(String account, String password, HttpSession httpSession) {
        Optional<String> accountOptional = Optional.of(account);
        Optional<String> passwordOptional = Optional.of(password);
        User user = userService.selectUser(accountOptional.get(), passwordOptional.get());
        if (user != null) {
            httpSession.setAttribute("user", user);
            return "forward:/home/show";
        }
        return "forward:/user/login";
    }

    @RequestMapping("/usermanagement")
    public String userManagement() {
        return "fore/userPicture";
    }

    @RequestMapping("/insertuserImg")
    public String insertuserImg(String productSingleImageList, HttpSession httpSession) {
        User user = (User) httpSession.getAttribute("user");
        int userId = user.getId();
        userService.insertuserImg(productSingleImageList,userId);
        return "fore/userPicture";
    }
    @RequestMapping("/updatepassword")
    public String updateword() {
        return "fore/updateUserpassword";
    }

    @RequestMapping("/doupdatepassword")
    public String updatePassword(String new1, String actual, String verifyCode, HttpSession httpSession) {
        String session_code = (String) httpSession.getAttribute("session_code");
        User user = (User) httpSession.getAttribute("user");
        if (session_code.toLowerCase().equals(verifyCode.toLowerCase())) {
            if (new1.equals(actual)) {
                userService.updateUserPassword(user.getId(), actual);
                return "forward:/home/show";
            }
        }
        return "forward:/user/updatepassword";
    }


}

package com.hrbust.controller;

import com.hrbust.bean.VerifyCode;
import com.sun.deploy.net.HttpResponse;
import com.sun.org.apache.regexp.internal.RE;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.IOException;

@Controller
@RequestMapping("/verify")
public class VerifyCodeController {
    @RequestMapping("/getverify")
    public String getVerify(HttpSession httpSession, HttpServletResponse resp) throws IOException {
        VerifyCode vc = new VerifyCode();
        BufferedImage image = vc.getImage();
        //保存图片上的文本到session域
        httpSession.setAttribute("session_code", vc.getText());
        VerifyCode.output(image, resp.getOutputStream());
        return "fore/updateUserpassword";
    }
}

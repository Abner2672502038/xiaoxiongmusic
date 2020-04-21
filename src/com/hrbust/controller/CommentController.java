package com.hrbust.controller;

import com.hrbust.bean.Comment;
import com.hrbust.bean.User;
import com.hrbust.service.CommentService;
import com.hrbust.util.DataUtil;
import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.stream.DoubleStream;

@Controller
@RequestMapping("/comment")
public class CommentController {
    @Autowired
    CommentService commentService;

    @RequestMapping(value = "/insertcomment", method = RequestMethod.POST)
    public String insertComment(String commentdata, String id, HttpSession httpSession, Model model) {
        int parseInt = Integer.parseInt(id);
        User user = (User) httpSession.getAttribute("user");
        int userId = user.getId();
        commentService.insertComment(commentdata, parseInt, userId, DataUtil.time());
        List<Comment> comments = commentService.selectComment(parseInt);
        model.addAttribute("comments", comments);
        return "testaudio";
    }

    @RequestMapping("/selectall")
    public String selectComment(Model model) {
        List<Comment> comments = commentService.selectCommentAll();
        model.addAttribute("comments", comments);

        return "comment";

    }

}

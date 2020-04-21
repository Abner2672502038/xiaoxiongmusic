package com.hrbust.controller;

import com.hrbust.bean.*;
import com.hrbust.service.CommentService;
import com.hrbust.service.HomeService;
import com.hrbust.service.SolarlistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/solar")
public class SolarListController {
    @Autowired
    SolarlistService solarlistService;
    @Autowired
    HomeService homeService;
    @Autowired
    CommentService commentService;

    /*@RequestMapping("/list")
    public String solarlist() {
        return "fore/solaringList";
    }*/

    @RequestMapping("/selectsolar")
    public String selectSolarListAll(Model model) {
        List<Song> list = solarlistService.selectSolarAll();
        model.addAttribute("list", list);
        return "fore/solaringList";
    }
    @RequestMapping(value = "/test",method = RequestMethod.GET)
    public String music3(@RequestParam String id, Model model, HttpSession httpSession) {
        model.addAttribute("id", id);
        int pid = Integer.parseInt(id);
     /*   List<CommentResult> list = new ArrayList<>();
        List<Comment> comments = commentService.selectComment(pid);
        for (Comment comment : comments) {
            User user = commentService.selectCommentResult(comment.getUserId());
            CommentResult commentResult = new CommentResult(comment, user);
            list.add(commentResult);
        }
        Clicks clicks = homeService.selectclicksBysongId(pid);
        User user = (User) httpSession.getAttribute("user");
        Song song = homeService.selectMusic(pid);
        if (user!=null){
            if (clicks == null) {
                int count=0;
                homeService.insertClicks(++count,pid,song.getClassifyId(),user.getId());
            }else{
                int countId = clicks.getCount();
                homeService.updateClicksById(clicks.getId(),++countId);
            }
        }*/
/*
        model.addAttribute("comentlist", list);
*/


        return "fore/musicaudio";
    }
    @RequestMapping(value = "/musicaudio", method = RequestMethod.GET)

    public @ResponseBody
    List<Music> music1(@RequestParam String id, Model model) {
        int pid = Integer.parseInt(id);
        List<Music> list = homeService.selectMusicById1(pid);
        return list;
    }
}

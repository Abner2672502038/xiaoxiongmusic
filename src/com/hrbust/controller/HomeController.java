package com.hrbust.controller;

import com.google.common.base.Splitter;
import com.hrbust.bean.*;
import com.hrbust.service.CommentService;
import com.hrbust.service.HomeService;
import com.hrbust.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
@RequestMapping("/home")
public class HomeController {
    @Autowired
    HomeService homeService;
    @Autowired
    CommentService commentService;
    @Autowired
    ProductService productService;

    @RequestMapping("/show")
    public String show(Model model, HttpSession httpSession) {
        List<SkipPhoto> skipPhotos = homeService.selectskipPhoto();
        model.addAttribute("skipphotos", skipPhotos);
        List<SongAndClicks> listsong = new ArrayList<>();
        List<Song> songs = homeService.selectSongAll();
        for (Song song : songs) {
            Clicks clicks = homeService.selectclicksBysongId(song.getId());
            SongAndClicks songAndClicks = new SongAndClicks(song, clicks);
            listsong.add(songAndClicks);
        }
        List<Clicks> clicks1 = homeService.selectClicksAll();
        Collections.sort(clicks1, new Comparator<Clicks>() {
            @Override
            public int compare(Clicks o1, Clicks o2) {
                return o2.getCount() - o1.getCount();
            }
        });
        int i = 0;
        List<Song> list1 = new ArrayList<>();
        for (Clicks click : clicks1) {
            if (i < 5) {
                Song song1 = homeService.selectSongById(click.getSongId());
                list1.add(song1);
            }
        }
        model.addAttribute("listHighMusic", list1);
        model.addAttribute("songs", listsong);
        return "homePage";
    }

    @RequestMapping("/play")
    public String play() {
        return "play";

    }

    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public String music2(@RequestParam String id, Model model, HttpSession httpSession) {
        model.addAttribute("id", id);
        int pid = Integer.parseInt(id);
        List<CommentResult> list = new ArrayList<>();
        List<Comment> comments = commentService.selectComment(pid);
        for (Comment comment : comments) {
            User user = commentService.selectCommentResult(comment.getUserId());
            CommentResult commentResult = new CommentResult(comment, user);
            list.add(commentResult);
        }
        Clicks clicks = homeService.selectclicksBysongId(pid);
        User user = (User) httpSession.getAttribute("user");
        Song song = homeService.selectMusic(pid);
        if (user != null) {
            if (clicks == null) {
                int count = 0;
                homeService.insertClicks(++count, pid, song.getClassifyId(), user.getId());
            } else {
                int countId = clicks.getCount();
                homeService.updateClicksById(clicks.getId(), ++countId);
            }
        }
        model.addAttribute("comentlist", list);


        return "testaudio";
    }


    @RequestMapping(value = "/testaudio", method = RequestMethod.GET)

    public @ResponseBody
    List<Music> music(@RequestParam String id, Model model) {
        int pid = Integer.parseInt(id);
        List<Music> list = homeService.selectMusicById(pid);
        return list;
    }

    @RequestMapping("/testy")
    public String testy() {

        return "testy";
    }

    @RequestMapping("/search")
    public String search(String searchname,Model model) {
        List<Song> list = homeService.selectSongAll();
        List<String> list1 = new ArrayList<>();
        List<Song> list2 = new ArrayList<>();
        for (Song song : list) {
          list1=  Splitter.on(";")
                    .trimResults()
                    .splitToList(song.getSongkey());
            for (String s : list1) {
                if (s.equals(searchname)) {
                    list2.add(song);
                }
            }

        }
        model.addAttribute("list2", list2);
        return "fore/search";

    }
}










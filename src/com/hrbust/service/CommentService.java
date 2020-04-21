package com.hrbust.service;

import com.hrbust.bean.Comment;
import com.hrbust.bean.CommentResult;
import com.hrbust.bean.User;

import java.util.List;

public interface CommentService {

    void insertComment(String commentdata, int id, int userId,String time);

    List<Comment> selectComment(int id);

    User selectCommentResult(int pid);

    List<Comment> selectCommentAll();
}

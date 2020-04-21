package com.hrbust.service.impl;

import com.hrbust.bean.Comment;
import com.hrbust.bean.CommentResult;
import com.hrbust.bean.User;
import com.hrbust.mapper.CommentMapper;
import com.hrbust.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {
    @Autowired
    CommentMapper commentMapper;

    @Override
    public void insertComment(String commentdata, int id, int userId,String time) {
        commentMapper.insertComment(commentdata, id, userId,time);

    }

    @Override
    public List<Comment> selectComment(int id) {
        return commentMapper.selectComment(id);
    }

    @Override
    public User selectCommentResult(int pid) {
        return commentMapper.selectCommentResult(pid);
    }

    @Override
    public List<Comment> selectCommentAll() {
        return commentMapper.selectCommentAll();
    }

}

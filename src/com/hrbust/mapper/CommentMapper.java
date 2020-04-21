package com.hrbust.mapper;

import com.hrbust.bean.Comment;
import com.hrbust.bean.CommentResult;
import com.hrbust.bean.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommentMapper {
    void insertComment(@Param("commentdata") String commentdata,@Param("id") int id, @Param("userId") int userId,@Param("time") String time);

    List<Comment> selectComment(int id);

    User selectCommentResult(int pid);

    List<Comment> selectCommentAll();

}

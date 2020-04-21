package com.hrbust.bean;

public class CommentResult {
    private Comment comment;
    private User user;

    public CommentResult() {
    }

    public CommentResult(Comment comment, User user) {
        this.comment = comment;
        this.user = user;
    }

    public Comment getComment() {
        return comment;
    }

    public void setComment(Comment comment) {
        this.comment = comment;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "CommentResult{" +
                "comment=" + comment +
                ", user=" + user +
                '}';
    }
}

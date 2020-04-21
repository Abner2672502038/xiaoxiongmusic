package com.hrbust.bean;

public class Comment {
    private int id;
    private String content;
    private int songId;
    private int userId;
    private String time;

    public Comment() {
    }

    public Comment(int id, String content, int songId, int userId,String time) {
        this.id = id;
        this.content = content;
        this.songId = songId;
        this.userId = userId;
        this.time = time;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getSongId() {
        return songId;
    }

    public void setSongId(int songId) {
        this.songId = songId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "id=" + id +
                ", content='" + content + '\'' +
                ", songId=" + songId +
                ", userId=" + userId +
                ", time='" + time + '\'' +
                '}';
    }
}

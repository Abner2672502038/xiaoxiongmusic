package com.hrbust.bean;

public class Clicks {
    private int id;
    private int countClick;
    private int songId;
    private int classifyId;
    private int userId;

    public Clicks() {
    }

    public Clicks(int id, int count, int songId, int classifyId, int userId) {
        this.id = id;
        this.countClick = count;
        this.songId = songId;
        this.classifyId = classifyId;
        this.userId = userId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCount() {
        return countClick;
    }

    public void setCount(int count) {
        this.countClick = count;
    }

    public int getSongId() {
        return songId;
    }

    public void setSongId(int songId) {
        this.songId = songId;
    }

    public int getClassifyId() {
        return classifyId;
    }

    public void setClassifyId(int classifyId) {
        this.classifyId = classifyId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "Clicks{" +
                "id=" + id +
                ", count=" + countClick +
                ", songId=" + songId +
                ", classifyId=" + classifyId +
                ", userId=" + userId +
                '}';
    }
}

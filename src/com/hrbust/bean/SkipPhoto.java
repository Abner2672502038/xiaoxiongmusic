package com.hrbust.bean;

public class SkipPhoto {
    private int id;
    private int num;

    public SkipPhoto() {
    }

    public SkipPhoto(int id, int num) {
        this.id = id;
        this.num = num;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    @Override
    public String toString() {
        return "SkipPhoto{" +
                "id=" + id +
                ", num=" + num +
                '}';
    }
}

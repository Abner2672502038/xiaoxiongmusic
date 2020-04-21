package com.hrbust.bean;

public class User {
    private int id;
    private String account;
    private String nickName;
    private String password;
    private String picture;

    public User() {
    }

    public User(int id, String account, String nickName, String password, String picture) {
        this.id = id;
        this.account = account;
        this.nickName = nickName;
        this.password = password;
        this.picture = picture;
    }

    public User(int id, String account, String nickName, String password) {
        this.id = id;
        this.account = account;
        this.nickName = nickName;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", account='" + account + '\'' +
                ", nickName='" + nickName + '\'' +
                ", password='" + password + '\'' +
                ", picture='" + picture + '\'' +
                '}';
    }
}

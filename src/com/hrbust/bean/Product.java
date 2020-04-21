package com.hrbust.bean;

public class Product {
    private int id;
    private String songName;
    private String singer;
    private int classifyId;
    private int vip;
    private String songFile;
    private String songKey;
    private String introduction;

    public Product() {
    }

    public Product(int id, String songName, String singer, int classifyId, int vip, String songFile, String songKey, String introduction) {
        this.id = id;
        this.songName = songName;
        this.singer = singer;
        this.classifyId = classifyId;
        this.vip = vip;
        this.songFile = songFile;
        this.songKey = songKey;
        this.introduction = introduction;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSongName() {
        return songName;
    }

    public void setSongName(String songName) {
        this.songName = songName;
    }

    public String getSinger() {
        return singer;
    }

    public void setSinger(String singer) {
        this.singer = singer;
    }

    public int getClassifyId() {
        return classifyId;
    }

    public void setClassifyId(int classifyId) {
        this.classifyId = classifyId;
    }

    public int getVip() {
        return vip;
    }

    public void setVip(int vip) {
        this.vip = vip;
    }

    public String getSongFile() {
        return songFile;
    }

    public void setSongFile(String songFile) {
        this.songFile = songFile;
    }

    public String getSongKey() {
        return songKey;
    }

    public void setSongKey(String songKey) {
        this.songKey = songKey;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", songName='" + songName + '\'' +
                ", singer='" + singer + '\'' +
                ", classifyId=" + classifyId +
                ", vip=" + vip +
                ", songFile='" + songFile + '\'' +
                ", songKey='" + songKey + '\'' +
                ", introduction='" + introduction + '\'' +
                '}';
    }
}

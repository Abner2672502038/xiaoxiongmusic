package com.hrbust.bean;

public class Song {
    private int id;
    private String songName;
    private String singerName;
    private int classifyId;
    private int vip;
    private String songFile;
    private String pictureFile;
    private String songkey;
    private String introduction;
    public Song() {
    }

    public Song(int id, String songName, String singerName, int classifyId) {
        this.id = id;
        this.songName = songName;
        this.singerName = singerName;
        this.classifyId = classifyId;
    }

    public Song(int id, String songName, String singerName, int classifyId, int vip, String songFile, String songkey, String introduction) {
        this.id = id;
        this.songName = songName;
        this.singerName = singerName;
        this.classifyId = classifyId;
        this.vip = vip;
        this.songFile = songFile;
        this.songkey = songkey;
        this.introduction = introduction;
    }

    public Song(int id, String songName, String singerName, int classifyId, int vip, String songFile, String pictureFile, String songkey, String introduction) {
        this.id = id;
        this.songName = songName;
        this.singerName = singerName;
        this.classifyId = classifyId;
        this.vip = vip;
        this.songFile = songFile;
        this.pictureFile = pictureFile;
        this.songkey = songkey;
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

    public String getSingerName() {
        return singerName;
    }

    public void setSingerName(String singerName) {
        this.singerName = singerName;
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

    public String getPictureFile() {
        return pictureFile;
    }

    public void setPictureFile(String pictureFile) {
        this.pictureFile = pictureFile;
    }

    public String getSongkey() {
        return songkey;
    }

    public void setSongkey(String songkey) {
        this.songkey = songkey;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    @Override
    public String toString() {
        return "Song{" +
                "id=" + id +
                ", songName='" + songName + '\'' +
                ", singerName='" + singerName + '\'' +
                ", classifyId=" + classifyId +
                ", vip=" + vip +
                ", songFile='" + songFile + '\'' +
                ", pictureFile='" + pictureFile + '\'' +
                ", songkey='" + songkey + '\'' +
                ", introduction='" + introduction + '\'' +
                '}';
    }
}

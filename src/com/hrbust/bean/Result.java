package com.hrbust.bean;

public class Result {
    private int id;
    private String songName;
    private String singer;
    private int vip;
    private String songFile;
    private String songKey;
    private String introduction;
    private Classify classify;

    public Result() {
    }

    public Result(int id, String songName, String singer, int vip, String songFile, String songKey, String introduction, Classify classify) {
        this.id = id;
        this.songName = songName;
        this.singer = singer;
        this.vip = vip;
        this.songFile = songFile;
        this.songKey = songKey;
        this.introduction = introduction;
        this.classify = classify;
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

    public Classify getClassify() {
        return classify;
    }

    public void setClassify(Classify classify) {
        this.classify = classify;
    }

    @Override
    public String toString() {
        return "Result{" +
                "id=" + id +
                ", songName='" + songName + '\'' +
                ", singer='" + singer + '\'' +
                ", vip=" + vip +
                ", songFile='" + songFile + '\'' +
                ", songKey='" + songKey + '\'' +
                ", introduction='" + introduction + '\'' +
                ", classify=" + classify +
                '}';
    }
}

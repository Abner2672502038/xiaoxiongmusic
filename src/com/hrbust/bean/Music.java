package com.hrbust.bean;

public class Music {
    private int id;
    private String songName;
    private String songpic;
    private String songfile;

    public Music() {
    }

    public Music(int id, String songName, String songpic, String songfile) {
        this.id = id;
        this.songName = songName;
        this.songpic = songpic;
        this.songfile = songfile;
    }

    public Music(int id, String songName, String songfile) {
        this.id = id;
        this.songName = songName;
        this.songfile = songfile;
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

    public String getSongpic() {
        return songpic;
    }

    public void setSongpic(String songpic) {
        this.songpic = songpic;
    }

    public String getSongfile() {
        return songfile;
    }

    public void setSongfile(String songfile) {
        this.songfile = songfile;
    }

    @Override
    public String toString() {
        return "Music{" +
                "id=" + id +
                ", songName='" + songName + '\'' +
                ", songpic='" + songpic + '\'' +
                ", songfile='" + songfile + '\'' +
                '}';
    }
}

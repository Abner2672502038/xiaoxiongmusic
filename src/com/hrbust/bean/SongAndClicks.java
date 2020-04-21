package com.hrbust.bean;

public class SongAndClicks {
    private Song song;
    private Clicks clicks;

    public SongAndClicks() {
    }

    public SongAndClicks(Song song, Clicks clicks) {
        this.song = song;
        this.clicks = clicks;
    }

    public Song getSong() {
        return song;
    }

    public void setSong(Song song) {
        this.song = song;
    }

    public Clicks getClicks() {
        return clicks;
    }

    public void setClicks(Clicks clicks) {
        this.clicks = clicks;
    }

    @Override
    public String toString() {
        return "SongAndClicks{" +
                "song=" + song +
                ", clicks=" + clicks +
                '}';
    }
}

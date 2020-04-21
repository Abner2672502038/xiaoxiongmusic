package com.hrbust.service;

import com.hrbust.bean.Clicks;
import com.hrbust.bean.Music;
import com.hrbust.bean.SkipPhoto;
import com.hrbust.bean.Song;

import java.util.List;

public interface HomeService {
    List<SkipPhoto> selectskipPhoto();

    List<Song> selectSongAll();

    List<Music> selectMusicById(int pid);

    Clicks selectclicksBysongId(int pid);

    Song selectMusic(int pid);

    void insertClicks(int i, int pid, int classifyId, int id);

    void updateClicksById(int id, int i);

    List<Clicks> selectClicksAll();

    Song selectSongById(int songId);

    List<Music> selectMusicById1(int pid);
}

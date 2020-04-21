package com.hrbust.service.impl;

import com.hrbust.bean.Clicks;
import com.hrbust.bean.Music;
import com.hrbust.bean.SkipPhoto;
import com.hrbust.bean.Song;
import com.hrbust.mapper.HomeMapper;
import com.hrbust.service.HomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HomeServiceImpl implements HomeService {
    @Autowired
    HomeMapper homeMapper;
    @Override
    public List<SkipPhoto> selectskipPhoto() {

        return homeMapper.selectskipPhoto();

    }

    @Override
    public List<Song> selectSongAll() {

        return homeMapper.selectSongAll();
    }

    @Override
    public List<Music> selectMusicById(int pid) {
        return homeMapper.selectMusicById(pid);
    }

    @Override
    public Clicks selectclicksBysongId(int pid) {
        return homeMapper.selectclickBysongId(pid);
    }

    @Override
    public Song selectMusic(int pid) {

        return homeMapper.selectMusic(pid);

    }

    @Override
    public void insertClicks(int i, int pid, int classifyId, int id) {

        homeMapper.insertClicks(i, pid, classifyId, id);

    }

    @Override
    public void updateClicksById(int id, int i) {
        homeMapper.updateClickById(id,i);
    }

    @Override
    public List<Clicks> selectClicksAll() {
        return homeMapper.selectClicksAll();
    }

    @Override
    public Song selectSongById(int songId) {
        return homeMapper.selectSongById(songId);
    }

    @Override
    public List<Music> selectMusicById1(int pid) {
        return homeMapper.selectMusicById1(pid);
    }

}

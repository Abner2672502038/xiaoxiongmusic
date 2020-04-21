package com.hrbust.mapper;

import com.hrbust.bean.Clicks;
import com.hrbust.bean.Music;
import com.hrbust.bean.SkipPhoto;
import com.hrbust.bean.Song;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface HomeMapper {
    List<SkipPhoto> selectskipPhoto();

    List<Song> selectSongAll();

    List<Music> selectMusicById(int pid);

    Clicks selectclickBysongId(int pid);

    Song selectMusic(int pid);

    void insertClicks(@Param("i") int i, @Param("pid") int pid,@Param("classifyId") int classifyId,@Param("id") int id);

    void updateClickById(@Param("id") int id,@Param("i") int i);

    List<Clicks> selectClicksAll();

    Song selectSongById(int songId);

    List<Music> selectMusicById1(int pid);
}

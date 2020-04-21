package com.hrbust.mapper;

import com.hrbust.bean.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    void insertUser(String nickname, String account, String password);

    User selectUser(String account, String password);

    void updateuserImg2(@Param("productSingleImageList") String productSingleImageList,@Param("id") int id);

    void updateUserPassword(@Param("id") int id,@Param("actual") String actual);
}

package com.hrbust.service;

import com.hrbust.bean.User;

public interface UserService {

    void insertUser(String nickname, String account, String password);

    User selectUser(String account, String password);

    void insertuserImg(String productSingleImageList,int id);

    void updateUserPassword(int id, String actual);

}

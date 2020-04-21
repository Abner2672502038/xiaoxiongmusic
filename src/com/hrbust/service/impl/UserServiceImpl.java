package com.hrbust.service.impl;

import com.hrbust.bean.User;
import com.hrbust.mapper.UserMapper;
import com.hrbust.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public void insertUser(String nickname, String account, String password) {
        userMapper.insertUser(nickname, account, password);

    }

    @Override
    public User selectUser(String account, String password) {

       return userMapper.selectUser(account, password);
    }

    @Override
    public void insertuserImg(String productSingleImageList,int id) {
        userMapper.updateuserImg2(productSingleImageList,id);

    }

    @Override
    public void updateUserPassword(int id, String actual) {
        userMapper.updateUserPassword(id, actual);

    }
}

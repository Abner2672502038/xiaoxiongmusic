package com.hrbust.service.impl;

import com.hrbust.bean.Admin;
import com.hrbust.mapper.AdminMapper;
import com.hrbust.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    AdminMapper adminMapper;
    @Override
    public void addAdmin(Admin admin) {
        adminMapper.addAdmin(admin);

    }

    @Override
    public Admin selectAdmin(String name, String password) {
        return adminMapper.selectAdmin(name, password);
    }
}

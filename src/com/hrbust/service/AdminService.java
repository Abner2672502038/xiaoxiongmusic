package com.hrbust.service;

import com.hrbust.bean.Admin;

public interface AdminService {


    void addAdmin(Admin admin);

    Admin selectAdmin(String name, String password);

}

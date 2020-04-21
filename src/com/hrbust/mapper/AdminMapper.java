package com.hrbust.mapper;

import com.hrbust.bean.Admin;

public interface AdminMapper {

    void addAdmin(Admin admin);

    Admin selectAdmin(String name, String password);


}

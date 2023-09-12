package com.example.springdemo.service.impl;

import com.example.springdemo.entity.Admin;
import com.example.springdemo.mapper.AdminMapper;
import com.example.springdemo.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminMapper adminMapper;

    @Override
    public boolean validateUser(String username, String password) {
        //根据用户名查询用户信息
        Admin admin = adminMapper.getAdminByUsername(username);

        //验证密码是否正确
        return admin != null && admin.getPassword().equals(password);
    }
}

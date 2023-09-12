package com.example.springdemo.controller;

import com.example.springdemo.entity.Admin;
import com.example.springdemo.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


@RestController
@CrossOrigin(origins = {"*", "null"})
public class AdminController {
    @Autowired
    private AdminService adminService;

    @PostMapping("/login")
    public String login(@RequestBody Admin admin) {
        //调用Service
        boolean isValidUser = adminService.validateUser(admin.getUsername(), admin.getPassword());

        if (isValidUser) {
            return "success";
        } else {
            return "fail";
        }
    }


}

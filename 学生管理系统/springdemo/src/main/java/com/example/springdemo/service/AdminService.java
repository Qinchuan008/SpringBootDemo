package com.example.springdemo.service;

import org.springframework.stereotype.Service;

@Service
public interface AdminService {

    boolean validateUser(String username, String password);
}

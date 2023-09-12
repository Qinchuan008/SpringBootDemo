package com.example.springdemo.mapper;


import com.example.springdemo.entity.Admin;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface AdminMapper {
    Admin getAdminByUsername(@Param("username") String username);
}

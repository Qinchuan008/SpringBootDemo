package com.example.springdemo.mapper;

import com.example.springdemo.entity.Student;

import java.util.List;

public interface StudentMapper {
    void addStudent(Student student);

    void deleteStudent(Integer id);

    List<Student> getAllStudents();

    void updateStudent(Student student);
}

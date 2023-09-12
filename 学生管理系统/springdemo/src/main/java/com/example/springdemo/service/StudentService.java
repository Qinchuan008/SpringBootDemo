package com.example.springdemo.service;

import com.example.springdemo.entity.Student;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface StudentService {

    void addStudent(Student student);

    void deleteStudent(Integer id);

    void updateStudent(Student student);

    List<Student> getAllStudents();
}

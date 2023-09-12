package com.example.springdemo.controller;

import com.example.springdemo.entity.Student;
import com.example.springdemo.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = {"*", "null"})
public class StudentController {
    @Autowired
    private StudentService studentService;

    //增删改查
    // 添加学生
    @PostMapping("/add")
    public String addStudent(@RequestBody Student student) {
        try {
            studentService.addStudent(student);
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "fail";
        }
    }

    // 删除学生
    @DeleteMapping("/delete/{id}")
    public String deleteStudent(@PathVariable Integer id) {
        try {
            studentService.deleteStudent(id);
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "fail";
        }
    }

    // 更新学生信息
    @PutMapping("/update")
    public String updateStudent(@RequestBody Student student) {
        try {
            studentService.updateStudent(student);
            System.out.println("修改成功");
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("修改失败");
            return "fail";
        }
    }

    // 查询所有学生
    @GetMapping("/getAll")
    public List<Student> getAllStudents() {
        return studentService.getAllStudents();
    }



}


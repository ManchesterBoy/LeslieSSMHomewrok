package com.ssm.entity;

//This is created by LeslieLu!!!

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Department {
    private long id;
    private String deptId;
    private String deptName;
    private List<Employee> employees;

}


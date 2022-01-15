package com.ssm.entity;

//This is created by LeslieLu!!!

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Employee  {
    private long id;
    private long empId;
    private String empName;
    private String gender;
    private String email;
    private long deptId;
    private Department department;

}


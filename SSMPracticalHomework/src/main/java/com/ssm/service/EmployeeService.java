package com.ssm.service;

//This is created by LeslieLu!!!

import com.ssm.entity.Employee;

import java.util.List;

public interface EmployeeService {

    //增加
    void saveEmployee(Employee employee);
    //更改
    boolean updateEmployee(Employee employee);
    //删除
    boolean deleteEmployee(long id);
    //查询
    Employee findEmployeeById(long id);
    //查询全部
    List<Employee> findAll();
    //根据员工号查询
    List<Employee> queryEmployeeById(Integer empId);

}

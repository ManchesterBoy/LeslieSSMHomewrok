package com.ssm.service;

//This is created by LeslieLu!!!

import com.ssm.entity.Employee;
import com.ssm.mapper.EmployeeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    private EmployeeMapper employeeMapper;

    //新增用户
    @Override
    public void saveEmployee(Employee employee){
        employeeMapper.saveEmployee(employee);
    }

    //更新用户
    @Override
    public boolean updateEmployee(Employee employee){
        return  employeeMapper.updateEmployee(employee);
    }

    //根据id删除用户
    @Override
    public boolean deleteEmployee(long id){
        return employeeMapper.deleteEmployee(id);
    }

    //根据id查找用户
    @Override
    public Employee findEmployeeById(long id){
        Employee employee=employeeMapper.findEmployeeById(id);
        return  employee;
    }

    //查询所有用户
    @Override
    public List<Employee> findAll(){
        List<Employee> allEmployee=employeeMapper.findAll();
        return allEmployee;
    }

    //根据员工号查询用户
    @Override
    public List<Employee> queryEmployeeById(Integer empId){

        return employeeMapper.queryEmployeeById(empId);
    }



}

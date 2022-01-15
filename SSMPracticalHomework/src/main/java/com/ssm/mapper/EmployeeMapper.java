package com.ssm.mapper;

//This is created by LeslieLu!!!

import com.ssm.entity.Employee;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EmployeeMapper {

    //增加
    void saveEmployee(Employee employee);
    //更改
    boolean updateEmployee( Employee employee);
    //删除
    boolean deleteEmployee(long id);
    //查询
    Employee findEmployeeById(long id);
    //查询全部
    List<Employee> findAll();
    //根据员工号查询
    List<Employee> queryEmployeeById(Integer empId);

}

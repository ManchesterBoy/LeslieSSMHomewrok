package com.ssm.controller;

//This is created by LeslieLu!!!

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.entity.Employee;
import com.ssm.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class EmployeeController {
    @Autowired
    private EmployeeService employeeService;



    //跳转到添加用户界面
    @RequestMapping("/toAddEmployee")
    public  String toAddEmployee(){
        return "addEmployee";
    }

    //添加用户并重定向
    @RequestMapping("/addEmployee")
    public String addEmployee(Model model, Employee employee){
        if(employee!=null){
            employeeService.saveEmployee(employee);
        }
        return  "redirect:/employeeInfo/1";
    }

    //修改用户
    @RequestMapping("/updateEmployee")
    public String UpdateEmployee(Model model, Employee employee){
        if (employeeService.updateEmployee(employee)){
            employee=employeeService.findEmployeeById(employee.getId());
            model.addAttribute("employee",employee);
            return "redirect:/employeeInfo/1";
        }
        return "error";
    }

    //查询单个用户
    @RequestMapping("/getEmployee/{empId}")
    public String getEmployee(@PathVariable("empId") long id,Model model){
        model.addAttribute("employee",employeeService.findEmployeeById(id));
        return "editEmployee";
    }


    //根据员工号查询
    @RequestMapping("/queryEmployee")
    public String queryEmployee(Integer queryEmployeeId,Model model,@RequestParam(value = "pn",defaultValue = "1")Integer pn){
        List<Employee> employees=employeeService.queryEmployeeById(queryEmployeeId);
        if(employees.isEmpty()){
            employees=employeeService.findAll();
            model.addAttribute("error","未找到");
            return "WrongCondtion";
        }
            //将用户信息放入PageInfo对象里
            PageInfo page=new PageInfo(employees,5);
            model.addAttribute("pageInfo",page);
        return "allEmployee";
    }




    //根据id删除用户
    @RequestMapping("/delEmployee/{empId}")
    public String deleteEmployee(@PathVariable("empId") long id,Model model){
        model.addAttribute("employee",employeeService.deleteEmployee(id));
        return "redirect:/employeeInfo/1";
    }

    //分页查询用户信息
    @RequestMapping("/employeeInfo/{pageInfo.pageNum}")
    public String getEmployee(@PathVariable("pageInfo.pageNum") Integer pn,Model model ){
        //从第一条开始，每页查询十条数据
        PageHelper.startPage(pn,10);
        List<Employee> employees=employeeService.findAll();
        //将用户信息放入PageInfo对象里
        PageInfo page=new PageInfo(employees,5);
        model.addAttribute("pageInfo",page);
        return "allEmployee";

    }
    //测试
    @RequestMapping("/xxx")
    public String h(){
        return "123";
    }

    @RequestMapping("/xyz")
    public String a(){
        return  "123";
    }

}

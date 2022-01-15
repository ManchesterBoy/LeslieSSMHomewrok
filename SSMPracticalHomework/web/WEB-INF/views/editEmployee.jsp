<%--
  Created by IntelliJ IDEA.
  User: LeslieLu
  Date: 2021/12/22
  Time: 10:28
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>编辑用户</title>
    <link
            href="${path}/bootstrap/css/bootstrap.min.css"
            rel="stylesheet">
    <script type="text/javascript"
            src="${path}/bootstrap/js/jquery-3.4.1.js"></script>
    <script type="text/javascript"
            src="${path}/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function updateEmployee() {
            var a=document.getElementById("empName").value;
            var b=document.getElementById("email").value;
            var c=document.getElementById("deptId").value;
            var f=document.getElementById("gender").value;
            if(a==""){
                alert("姓名不能为空！！！");
            }
            else{
                if(b=="") {
                    alert("邮箱不能为空！！！");
                }
                    else{
                        if(c==""){
                            alert("部门号不能为空！！！");
                        }
                        else{
                            if(f==""){
                                alert("性别不能为空！！！")
                            }
                            else{
                                if(c!="1" && c!="2" && c!="3" && c!="4" && c!="5" ){
                                    alert("部门号输入错误，应为1-5");
                                }
                                else {
                                    var form = document.forms[0];
                                    form.action = "<%=basePath %>/updateEmployee";
                                    form.method = "post";
                                    form.submit();
                                    alert("修改用户信息成功！！！");
                                }
                            }

                    }
                }
            }

        }
    </script>

    <style type="text/css">
        body{
            background-color: aliceblue;
        }
    </style>

</head>
<body>
<h1>修改用户</h1>
<form action="" name="EmployeeForm">
    <input type="hidden" name="id" value="${employee.id }" />
    <input type="hidden" name="empId" value="${employee.empId }" />
    姓名：<input type="text" name="empName" id="empName" value="${employee.empName}" />
    性别：<input type="text" name="gender" id="gender" value="${employee.gender == "M"?"M":"F" }" />
<%--    性别：<input type="radio" name="gender" id="genderF"  value="F" >Female--%>
<%--    <input type="radio" name="gender" id="genderM"  value="M" >Male--%>
    邮箱：<input type="text" name="email" id="email" value="${employee.email }" />
    部门号：<input type="text" name="deptId" id="deptId" value="${employee.deptId }" />
    <input type="button" value="编辑" class="btn btn-primary" onclick="updateEmployee()" />


</form>
</body>

</html>

<!--This is created by LeslieLu!!!-->

<%--
  Created by IntelliJ IDEA.
  User: LeslieLu
  Date: 2021/12/22
  Time: 10:28
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isErrorPage="true" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<title>添加用户</title>
<head>

<style type="text/css">
    body{
        background-color: aliceblue;
    }
</style>
    <link
            href="${path}/bootstrap/css/bootstrap.min.css"
            rel="stylesheet">
    <script type="text/javascript"
            src="${path}/bootstrap/js/jquery-3.4.1.js"></script>
    <script type="text/javascript"
            src="${path}/bootstrap/js/bootstrap.min.js"></script>


    <style type="text/css">
        body{
            background-color: aliceblue;
        }
    </style>
</head>
<body>
<h1>添加用户</h1>
<form action="" name="employeeForm"  >
    员工号：<input type="text" name="empId" value="" id="empId" oninput="a()" >
    姓名：<input type="text" name="empName" value="" id="empName" oninput="b()">
    性别：<input type="radio" name="gender" id="genderF"  value="F" checked="checked">Female
        <input type="radio" name="gender" id="genderM"  value="M">Male
    邮箱：<input type="text" name="email" value="" id="email" oninput="d()">
    部门号：<input type="text" name="deptId" id="deptId" value=""  >
    <input type="button" value="添加" class="btn btn-primary" onclick="addEmployee()">
</form>

<script type="text/javascript">


    function addEmployee() {
        var a=document.getElementById("empId").value;
        var b=document.getElementById("empName").value;
        var c=document.getElementById("email").value;
        var d=document.getElementById("deptId").value;
        if(a==""){
            alert("员工号不能为空！！！");
        }
        else{
            if(b==""){
                alert("姓名不能为空！！！");
            }
            else{
                if(c==""){
                    alert("邮箱不能为空！！！");
                }
                else{
                    if (d=="" ){
                        alert("部门号不能为空！！！");
                    }
                    else {
                        if(d!="1" && d!="2" && d!="3" && d!="4" && d!="5" ){
                            alert("部门号输入错误，应为1-5");
                        }
                        else {
                            var form = document.forms[0];
                            form.action = "<%=basePath %>/addEmployee";
                            form.method = "post";
                            form.submit();
                            alert("添加用户信息成功！！！");
                        }
                    }
                }
            }
        }


    }
</script>
</body>
</html>

<!--This is created by LeslieLu!!!-->

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
  pageContext.setAttribute("path", request.getContextPath());
//    pageContext.setAttribute("Path",request.getContextPath());
%>
<!DOCTYPE html >
<html>
<head>
  <title>首页</title>
  <style type="text/css">
    body{
      background-color: aliceblue;
    }
    a {
      text-decoration: none;
      color: #fff;
      font-size: 25px;
    }

    h3 {
      width: 250px;
      height: 50px;
      margin: 250px auto;
      text-align: center;
      line-height: 50px;
      background: #5BC0DE;
      border-radius: 4px;
    }
  </style>
</head>
<body>
<h3>
  <a   href="${path}/employeeInfo/1">进入用户管理页</a>
    <a href="${path}/xxx" hidden="hidden">123</a>


</h3>
</body>
</html>

<!--This is created by LeslieLu!!!-->
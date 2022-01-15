<%--
  Created by IntelliJ IDEA.
  User: LeslieLu
  Date: 2021/12/22
  Time: 10:28
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
    <title>用户列表</title>
    <link
            href="${path}/bootstrap/css/bootstrap.min.css"
<%--            href="${path}/web/bootstrap/css/bootstrap.min.css"--%>
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

    <script type="text/javascript">
        function delMakeSure(){
            var r=confirm("确定要删除吗？");
            if(r==true){
                alert("删除成功！！！");
            }
            else {
                alert("再考虑下呗！！！");
                // alert("但它还是会被删除，这是一个没被解决的小bug QAQ")
                return false;
            }
        }


    </script>
</head>

<body>
<div class="container">
    <!-- 标题 -->
    <div class="row">
        <div class="col-md-12" >
            <h1>SSM整合项目</h1><br/>
        </div>
    </div>
    <!-- 按钮 -->
    <div class="row">
<%--        <div class="" >--%>

<%--        </div>--%>

        <!--  查询 -->
        <form action="${pageContext.request.contextPath}/queryEmployee" method="post" >
            <span style="color:red;font-weight: bold">${error}</span>
            员工号：<input type="text" name="queryEmployeeId" placeholder="请输入要查询的员工号">
            <input type="submit"  value="查询" class="btn btn-primary">
            <a  class="btn btn-success" href="${path}/toAddEmployee">新增</a>
        </form>


    </div>



    </div>

</div>
<br/>


    <!-- 表格  -->
    <div class="row">
        <div class="col-md-12  " >
            <table class="table table-hover">
                <tr>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th>empId</th>
                    <th>empName</th>
                    <th>gender</th>
                    <th>email</th>
                    <th>deptId</th>
                    <th>deptName</th>
                    <th>操作</th>



                </tr>
                <c:forEach items="${pageInfo.list }" var="employee" >
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>${employee.empId}</td>
                        <td>${employee.empName }</td>
                        <td>${employee.gender == "M"?"M":"F" }</td>
                        <td>${employee.email }</td>
                        <td>${employee.deptId}</td>
                        <td>${employee.department.deptName}</td>
                        <td>
                            <a type="button"  href="${path}/getEmployee/${employee.id}" class="btn btn-info btn-sm">
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                编辑</a>
                            <a type="button"  href="${path}/delEmployee/${employee.id}" class="btn btn-danger btn-sm" onclick="javascript:return delMakeSure()" >
                                <span class="glyphicon glyphicon-trash" aria-hidden="true" ></span>
                                删除</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>

    <hr style="height:1px;border:none;border-top:1px solid #ccc;" />
    <!-- 分页导航栏 -->

    <!-- 分页信息 -->
    <div class="row">
        <!-- 分页文字信息，其中分页信息都封装在pageInfo中 -->
        <div class="col-md-6 col-md-offset-1" >
            当前第：${pageInfo.pageNum}页，总共：${pageInfo.pages}页，总共：${pageInfo.total}条记录
        </div>

        <!-- 分页条 -->
        <div class="col-md-5 " >
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <li><a href="${path}/employeeInfo/1">首页</a></li>
                    <c:if test="${pageInfo.hasPreviousPage }">
                        <li>
                            <a href="${path}/employeeInfo/${pageInfo.pageNum-1}" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </c:if>

                    <c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
                        <c:if test="${page_Num == pageInfo.pageNum }">
                            <li class="active"><a href="#">${ page_Num}</a></li>
                        </c:if>
                        <c:if test="${page_Num != pageInfo.pageNum }">
                            <li><a href="${path}/employeeInfo/${ page_Num}">${ page_Num}</a></li>
                        </c:if>
                    </c:forEach>
                    <c:if test="${pageInfo.hasNextPage }">
                        <li>
                            <a href="${path}/employeeInfo/{pageInfo.pageNum+1}" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </c:if>
                    <li><a href="${path}/employeeInfo/${pageInfo.pages}">末页</a></li>
                </ul>
            </nav>
        </div>
    </div>
</div>
</body>
</html>

<!--This is created by LeslieLu!!!-->


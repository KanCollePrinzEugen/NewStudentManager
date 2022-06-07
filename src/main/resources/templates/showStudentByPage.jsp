<!--支持EL表达式，不设的话，EL表达式不会解析-->
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!--输出,条件,迭代标签库-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fmt"%> <!--数据格式化标签库-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="sql"%> <!--数据库相关标签库-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fn"%> <!--常用函数标签库-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>全体学员信息</title>
    <link rel="stylesheet" type="text/css" th:href="@{/static/css/showStudentByPage.css}">
</head>
<body>
    <h1>全体学员信息</h1>
    <div class="content">
        <table>
            <tr>
                <th>姓名</th>
                <th>年龄</th>
                <th>地址</th>
            </tr>
            <c:forEach items="${pageInfo.getList()}" var="student">
            <tr>
                <td>${student.getSname()}</td>
                <td>${student.getAge()}</td>
                <td>${student.getAddress()}</td>
            </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
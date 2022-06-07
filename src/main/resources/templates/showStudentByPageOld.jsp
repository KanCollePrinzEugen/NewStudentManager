<%@ page import="cn.work.prinzeugen.entity.Student" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.github.pagehelper.PageInfo" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%--
  Created by IntelliJ IDEA.
  User: Peak Croft
  Date: 2022/3/14
  Time: 9:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>分页查询</title>
</head>
<body>

<%--引入JQuery--%>
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<%
    PageInfo<Student> pageInfo = (PageInfo<Student>) request.getSession().getAttribute("pageInfo");
%>
<script>

    $(function (){

        // 初始化跳转文本框的数值
        $("#pageNumber").val(${pageInfo.getPageNum()});

        // 上一页按钮 事件
        $("#prePage").click(function () {

            var nowPage = ${pageInfo.getPageNum()};

            // 不能跳转到第0页
            if (nowPage <= 1){
                return false;
            }

            // 否则就跳转到上一页
            $("#pageNumber").val(Number(nowPage) - 1);

            return true;
        });

        // 下一页按钮 事件
        $("#nextPage").click(function () {

            var nowPage = ${pageInfo.getPageNum()};

            // 取出页面最大值
            var maxPage = ${pageInfo.getPages()};

            // 不能跳转到超出最大页
            if (nowPage >= maxPage){
                return false;
            }

            // 否则就跳转到下一页
            $("#pageNumber").val(Number(nowPage) + 1);

            return true;
        });

        // 数字按钮 事件
        $(".pageButtons").click(function () {

            // 否则就跳转到下一页
            $("#pageNumber").val(this.value);
        });


    });

</script>

<%--数据展示--%>
<div>
    <table align="center" cellspacing=50>
        <tr>
            <td>学号</td>
            <td>姓名</td>
            <td>年龄</td>
            <td>地址</td>
        </tr>
        <c:forEach items="${pageInfo.getList()}" var="p">
            <tr>

                <td>${p.getSno()}</td>
                <td>${p.getSname()}</td>
                <td>${p.getAge()}</td>
                <td>${p.getAddress()}</td>
            </tr>
        </c:forEach>
    </table>
</div>

<%--分页查询--%>
<form>
    <table align="center" cellspacing=30>
        <tr>
            <td> <button id="prePage">上一页</button> </td>
            <c:forEach begin="1" end="${pageInfo.getPages()}" var="number">
                <td> <button class="pageButtons" style="width: 40px" value="${number}">${number}</button> </td>
            </c:forEach>
            <td> <button id="nextPage">下一页</button> </td>
            <td> <input type="text" name="page" id="pageNumber" style="width: 40px"> </td>
            <td> <button> 跳转 </button> </td>
        </tr>
        <%--设置每页显示5个数据--%>
        <tr> <input type="hidden" name="rows" value="5"> </tr>
    </table>
</form>


</body>
</html>

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
<%--引入JQuery--%>
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>

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

    </div>
</body>
</html>
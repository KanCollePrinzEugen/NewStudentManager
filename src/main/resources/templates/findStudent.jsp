<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>学生模糊查询</title>
    <link rel="stylesheet" type="text/css" th:href="@{/static/css/findStudent.css}">
</head>
<body>
    <div class="content">
        <form action="showAllStudentsByName" method="post">
            <table>
                <tr>
                    <td class="centerTD" colspan="2">请输入您要查询的姓名（支持模糊查询）：</td>
                </tr>
                <tr>
                    <td class="left">姓名：</td>
                    <td class="right"><input type="text" name="sname" /></td>
                </tr>

                <tr>
                    <td class="centerButton" colspan="2">
                        <input type="submit" value="模糊查询" class="submitButton"/></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
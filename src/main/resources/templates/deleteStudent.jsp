<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>学生の情報を削除</title>
    <link rel="stylesheet" type="text/css" th:href="@{/static/css/deleteStudent.css}">
</head>
<body>
    <h1>学生の情報を削除</h1>
    <div class="content">
        <h2>削除したい学生のIDを入力してください</h2>
        <tr>
            <td class="left">
                学号：
            </td>
            <td class="right">
                <input type="text"　class="textInput" name="sno" />
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <input type="submit"　class="submitButton" value="删除学生" />
            </td>
        </tr>
    </div>
</body>
</html>
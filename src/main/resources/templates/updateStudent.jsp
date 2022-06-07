<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>学生の情報を編集</title>
    <link rel="stylesheet" type="text/css" th:href="@{/static/css/updateStudent.css}">
</head>
<body>
    <h1>学生の情報を編集</h1>
    <div class="content">
        <h2>新し情報を入力してください</h2>
        <form action="updateStudent" method="post">
            <table>
                <tr>
                    <td class="left">ID：</td>
                    <td class="right"><input type="text" name="sno" class="textInput"/></td>
                </tr>
                <tr>
                    <td class="left">名前：</td>
                    <td class="right"><input type="text" name="sname" class="textInput"/></td>
                </tr>
                <tr>
                    <td class="left">パスワート：</td>
                    <td class="right"><input type="password" name="pwd" class="textInput"/></td>
                </tr>
                <tr>
                    <td class="left">パスワートを確認：</td>
                    <td class="right"><label>
                        <input type="password" name="pwdCheck" class="textInput"/>
                    </label></td>
                </tr>
                <tr>
                    <td class="left">年齢：</td>
                    <td class="right"><input type="text" name="age" class="textInput"/></td>
                </tr>
                <tr>
                    <td class="left">住所：</td>
                    <td class="right"><input type="text" name="address" class="textInput"/></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" class="submitButton" value="編集" /></td>
                </tr>
                <tr>
                    <td class="txtLink" colspan="2">
                        <a href="toMain">ホームページに戻る</a>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
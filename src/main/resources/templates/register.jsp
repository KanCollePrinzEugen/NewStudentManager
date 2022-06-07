<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>新しいアカウント作成</title>
    <link rel="stylesheet" type="text/css" th:href="@{/static/css/register.css}">
</head>
<body>
    <h1>アカウント作成</h1>
    <div class="content">
        <h2>新しいアカウート情報を入力してください</h2>
        <form action="studentRegister" method="post">
            <table>
                <tr>
                    <td class="left">ID：</td>
                    <td class="right"><label>
                        <input type="text" name="sno" class="textInput"/>
                    </label></td>
                </tr>
                <tr>
                    <td class="left">姓名：</td>
                    <td class="right"><label>
                        <input type="text" name="sname" class="textInput"/>
                    </label></td>
                </tr>
                <tr>
                    <td class="left">年齢：</td>
                    <td class="right"><label>
                        <input type="text" name="age" class="textInput"/>
                    </label></td>
                </tr>
                <tr>
                    <td class="left">住所：</td>
                    <td class="right"><label>
                        <input type="text" name="address" class="textInput"/>
                    </label></td>
                </tr>
                <tr>
                    <td class="left">パスワート：</td>
                    <td class="right"><label>
                        <input type="password" name="pwd" class="textInput"/>
                    </label></td>
                </tr>
                <tr>
                    <td class="left">パスワートを確認：</td>
                    <td class="right"><label>
                        <input type="password" name="pwdCheck" class="textInput"/>
                    </label></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" class="submitButton" value="登録" /></td>
                </tr>
                <tr>
                    <td class="txtLink" colspan="2">
                        <a href="index">サインインページに戻る</a>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
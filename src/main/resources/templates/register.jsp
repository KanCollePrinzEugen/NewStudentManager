<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>新しいアカウント作成</title>
</head>
<body>
    <h2>アカウント作成</h2>
    <div id="registerBox">
        <form action="loginStudent" method="post">
            <table>
                <tr>
                    <td class="centerTD" colspan="2">新しいアカウート情報を入力してください</td>
                </tr>
                <tr>
                    <td class="left">ID：</td>
                    <td class="right"><label>
                        <input type="text" name="sno" />
                    </label></td>
                </tr>
                <tr>
                    <td class="left">年齢：</td>
                    <td class="right"><label>
                        <input type="text" name="age" />
                    </label></td>
                </tr>
                <tr>
                    <td class="left">パスワート：</td>
                    <td class="right"><label>
                        <input type="password" name="pwd" />
                    </label></td>
                </tr>
                <tr>
                    <td class="left">パスワートを確認：</td>
                    <td class="right"><label>
                        <input type="password" name="pwd" />
                    </label></td>
                </tr>
                <tr>
                    <td class="centerButton" colspan="2"><input type="submit"
                                                                value="登録" /></td>
                </tr>
                <tr>
                    <td class="centerButton" colspan="2">
                        <a href="index">サインインページに戻る</a>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
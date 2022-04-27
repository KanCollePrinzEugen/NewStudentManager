<html xmlns:th="http://www.thymeleaf.org">
<head>
	<title>学生管理システムへようこそ</title>
	<link rel="stylesheet" type="text/css" th:href="@{/static/css/index.css}">
</head>
<body>
<h1>学生管理システムへようこそ!</h1>
<div id="loginBox" class="content">
	<form action="studentLogin" method="post">
		<h2>アカウート情報を入力してください</h2>
		<table>
			<tr>
				<td class="left">ID：</td>
				<td class="right"><label>
					<input class="textInput" type="text" name="sno" />
				</label></td>
			</tr>
			<tr>
				<td class="left">パスワート：</td>
				<td class="right"><label>
					<input class="textInput" type="password" name="pwd" />
				</label></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" class="submitButton" value="サインイン" /></td>
			</tr>
			<tr>
				<td class="centerButton" colspan="2">
					<a href="toRegister">新しいアカウント作成</a>
				</td>
			</tr>
			<tr>
				<td class="centerButton" colspan="2">
					<a href="toChangePassword">IDまたはパスワートをお忘れですか?</a>
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>

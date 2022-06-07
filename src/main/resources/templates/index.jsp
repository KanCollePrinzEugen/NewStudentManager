<html xmlns:th="http://www.thymeleaf.org">
<head>
	<title>欢迎使用学生管理系统</title>
	<link rel="stylesheet" type="text/css" th:href="@{/static/css/index.css}">
</head>
<body>
<h1>欢迎使用学生管理系统!</h1>
<div id="loginBox" class="content">
	<form action="studentLogin" method="post">
		<h2>请登录</h2>
		<table>
			<tr>
				<td class="left">ID：</td>
				<td class="right"><label>
					<input class="textInput" type="text" name="sno" />
				</label></td>
			</tr>
			<tr>
				<td class="left">密码：</td>
				<td class="right"><label>
					<input class="textInput" type="password" name="pwd" />
				</label></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" class="submitButton" value="登录" /></td>
			</tr>
			<tr>
				<td class="centerButton" colspan="2">
					<a href="toRegister">创建新账号</a>
				</td>
			</tr>
			<tr>
				<td class="centerButton" colspan="2">
					<a href="toChangePassword">忘记了密码？</a>
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>

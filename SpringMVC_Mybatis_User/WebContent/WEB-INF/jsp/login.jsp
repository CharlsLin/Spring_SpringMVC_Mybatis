<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>请登录</title>
</head>
<body>

	<form action="${pageContext.request.contextPath }/checkLogin" method="post">
		<table>
			<tr>
				<td>Id:</td>
				<td><input id="id" name="id" type="text"></td>
			</tr>
			<tr>
				<td>密码:</td>
				<td><input id="pwd" name="pwd" type="password"></td>
			</tr>
			<tr>
				<td><input type="submit" value="登录"></td>
			</tr>
			<p style="color: red">${msg }</p>
		</table>
	</form>
</body>
</html>

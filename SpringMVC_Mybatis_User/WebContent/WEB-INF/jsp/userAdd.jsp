<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/style.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-3.3.1.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/main.js"></script>

<style>
p {
	color: red;
}
</style>


<title>添加新用户</title>
</head>
<body>

	<form id="add_table"
		action="${pageContext.request.contextPath }/addUser" method="post"
		onsubmit="return check();">
		请填写新增用户的信息：
		<div>
			<table>
				<tr>
					<td>name</td>
					<td><input type="text" name="name" id="uname" /></td>
					<td><p id="unamenullerr"></p></td>
				</tr>
				<tr>
					<td>sex</td>
					<td><input type="text" name="sex" id="usex" /></td>
					<td><p id="usexnullerr"></p></td>
				</tr>

			</table>
		</div>

		<div>
			<button type="reset" id="reset" onclick="return reset_confirm()">重置</button>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<button type="submit" id="submit">提交</button>
			&nbsp;&nbsp;&nbsp;&nbsp; 
			<button type="button" onclick="return back_confirm()">返回</button>
		</div>
	</form>



</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css" /> 
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/main.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改用户信息</title>
</head>
<body> 

<input type="hidden" name="id" value="${user.id }"/>
<p>修改用户信息：</p>
<form action="${pageContext.request.contextPath }/update" method="post"> 

<table width="100%" border=1 id="edit_table_whole">
<tr>
	<td class="edit_table">id</td>
	<td class="edit_table_input"><input type="text" name="id" value="${user.id }"/></td>
</tr> 
<tr>
	<td class="edit_table">name</td>
	<td class="edit_table_input"><input type="text" name="name" value="${user.name }"/></td>
</tr>
<tr>
	<td class="edit_table">sex</td>
	<td class="edit_table_input"><input type="text" name="sex" value="${user.sex }"/></td>
</tr>
</table>
<br>
<div>
<button type="submit"  onclick=" return edit_confirm()">提交</button>	
&nbsp;&nbsp;&nbsp;&nbsp; 
<button type="button" onclick="return back_confirm()">返回</button>
</div>



</form>
</body>

</html>

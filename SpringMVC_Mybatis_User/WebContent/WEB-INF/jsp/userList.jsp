<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/style.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-3.3.1.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery.tablesorter.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/main.js"></script>
<script type="text/javascript"></script>
<title>查询用户列表</title>

<style type="text/css">
body {
	text-align: center;
	background: #edf4f0;
}

table.imagetable {
	width: 15cm; 
	margin : 0px auto;
	margin-top:100px;
	align: center;
	text-align: center;
	font-family: verdana, arial, sans-serif;
	font-size: 20px;
	color: #333333;
	border-width: 1px;
	border-color: #999999;
	font-family: verdana, arial, sans-serif;
	align: center;
	
}

table.imagetable th {
	background: #99CCCC;
	color:#141616;
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #999999;
}

table.imagetable td {
	background: #CCFFCC;
	border-width: 0.5px;
	padding: 8px;
	border-style: solid;
	border-color: #999999;
	
}

 .pageinformation {
	margin-top: 10px;
	font-size: 15px;
	margin-bottom: 20px;
}

.pagenum {
	
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}

.pagenum li {
	display: inline;
}

.pagenum li a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
}

.pagenum li a.active {
	background-color: #4CAF50;
	color: white;
}

.button {
    background-color: grey; /* Green */
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}
.button {
    background-color: white;
    color: black;
    border: 2px solid #e7e7e7;
}

.button4:hover {background-color: #e7e7e7;}

a{
text-decoration:none
}

</style>

</head>

<body>
	<!-- <p id="table_title">用户列表：</p> -->

	<table class="imagetable">
		<!-- //id="tab" -->

		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Sex</th>
			<th>OP1</th>
			<th>OP2</th>
		</tr>


		<c:forEach items="${userList}" var="u" varStatus="status">

			<tr>
				<td>${u.id}</td>

				<td>${u.name}</td>

				<td>${u.sex}</td>

				<td><a type="button"
					href="${pageContext.request.contextPath }/edit?id=${u.id}">修改</a></td>
				<td><a type="button" style="color: red"
					href="${pageContext.request.contextPath }/userDel?id=${u.id}"
					onclick=" return del()">删除</a></td>
			</tr>
		</c:forEach>
	</table>




	<!-- 分页信息 -->
	<div class="wholepage">
		<!-- 分页文字信息，其中分页信息都封装在pageInfo中 -->
		<div class="pageinformation">
			当前第${pageInfo.pageNum}/${pageInfo.pages}页，共计：${pageInfo.total}条记录</div>

		<!-- 分页条 -->
		<div class="pagenum">
			<ul class="pagination">
				<li><a href="${pageContext.request.contextPath }/userList?pn=1">首页</a></li>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<c:if test="${pageInfo.hasPreviousPage }">
					<li><a
						href="${pageContext.request.contextPath }/userList?pn=${pageInfo.pageNum-1}"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>
				</c:if>
				<c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">

					<c:if test="${page_Num == pageInfo.pageNum }">
						<li class="active"><a href="#"> ${ page_Num}</a></li>	
					</c:if>
					
					<c:if test="${page_Num != pageInfo.pageNum }">
						<li><a
							href="${pageContext.request.contextPath }/userList?pn=${ page_Num}">
								${ page_Num}</a></li>
					</c:if>
					
					
				</c:forEach>

				<c:if test="${pageInfo.hasNextPage }">
					<li><a
						href="${pageContext.request.contextPath }/userList?pn=${pageInfo.pageNum+1}"
						aria-label="Next"><span aria-hidden="true">&raquo;</span> </a></li>
				</c:if>

				<li><a
					href="${pageContext.request.contextPath }/userList?pn=${pageInfo.pages}">末页</a></li>
			</ul>
		</div>
	</div>

	<div class="button">
		<div id="add_button">
			<a type="button" href="${pageContext.request.contextPath }/add">添加新用戶</a>
		</div>	
	</div>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<div class="button">
		<div id="checkout_button">
			 <a type="button" href="${pageContext.request.contextPath }/outLogin">退出登录</a> 
		</div>
	</div>




</body>
</html>
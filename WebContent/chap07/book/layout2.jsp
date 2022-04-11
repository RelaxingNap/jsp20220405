<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Layout2</title>
</head>
<body>
	<table width = "400" border = "1" cellpadding = "0" cellspacing = "0">
	<tr>
		<td colspan = "2">
			<jsp:include page="../book/module/top.jsp"></jsp:include>
		</td>
	</tr>
	
	<tr>
		<td width = "100" valign="top">
			<jsp:include page="../book/module/left.jsp"></jsp:include>		
		</td>
	
		<td width = "300" valign="top">
			<!-- 내용부분 : 시작 -->
			이부분은 layout2.jsp가 생성한다 
			<br />
			레이아웃2
			<br />
			<br />
			<br />
			<!-- 내용부분 : 끝 -->	
		</td>
	</tr>
	<tr>
		<td colspan = "2">
			<jsp:include page="../book/module/bottom.jsp"></jsp:include>
		</td>
	</tr>
	</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>ex02from.jsp</h1>
	
	<!-- 데이터 넘기는 방식 -->
	<jsp:forward page="ex02to.jsp">
		<jsp:param value="bts" name="group"/>
		<jsp:param value="sunja" name="character"/>
	</jsp:forward>
</body>
</html>
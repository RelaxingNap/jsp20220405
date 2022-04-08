<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	
	<!-- post로 한글 전송시 기본적인 인코딩방식이 utf-8이 아니기 때문에 --> 
	<!-- 프로그램적으로 미리 설정하거나 서버에 설정을 미리해놓으면 해결 -->
	<h1><%= request.getParameter("movie") %></h1>
	<h1><%= request.getParameter("actor") %></h1>
</body>
</html>
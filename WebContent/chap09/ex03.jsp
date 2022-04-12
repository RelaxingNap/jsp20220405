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
	<h1>쿠키 경로</h1>
	
	<%
		Cookie cookie = new Cookie("my-cookie3", "my-value3");
		// 기본 경로 : 현재 경로
		
		response.addCookie(cookie);
	%>
	<a href="ex04.jsp">같은 경로</a>	
	<!-- 같은 경로(같은 폴더)일시 생성한 쿠키를 들고 옴 -->
	<!-- 쿠키를 들고 올 수 있는 경우는 같은경로 또는 그 경로의 하위경로에 쿠키를 들고 올 수 있음 -->
	<a href="../chap07/ex01.jsp">다른 경로</a> 
	<!-- 다른 경로(다른 폴더)일시 생성한 쿠키를 들고오지 않음 -->
</body>
</html>
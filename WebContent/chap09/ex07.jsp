<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "chap09.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>새 쿠키 응답 : chap09.Cookies 사용</h1>
	<%
		Cookie cookie = Cookies.createCookie("cookie7", "쿠키값7");
		Cookie cookie2 = Cookies.createCookie("cookie8", "value8");
		
		response.addCookie(cookie);
		response.addCookie(cookie2);
	%>
</body>
</html>
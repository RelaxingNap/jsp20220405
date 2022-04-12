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
	<h1>서버에서 쿠키 읽기</h1>
	
	<%
		Cookie[] cookies = request.getCookies();
		// request객체에서 쿠키들을 얻어올 수 있음
		for(Cookie cookie : cookies) {
			out.print("<p>");
			out.print(cookie.getName());
			out.print(" : ");
			out.print(cookie.getValue());
			out.print("</p>");
		}
		//여러개 얻어오기 때문에 원하는 값을 찾기 위한 반복문 필요
	%>
</body>
</html>
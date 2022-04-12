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
	<h1>응답 with cookie</h1>

	<%
		Cookie cookie = new Cookie("my-cookie1", "my-value1");
		response.addCookie(cookie);
		Cookie cookie2 = new Cookie("my-cookie2", "my-value2");
		response.addCookie(cookie2);
	%>

</body>
</html>


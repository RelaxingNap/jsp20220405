<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import="chap09.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Cookies 활용해서 쿠키 확인</h1>
	
	<%
		Cookies cookies = new Cookies(request);
	%>
	
	<p>cookie7 있음 ? : <%=cookies.exists("cookie7") %></p>
	<p>cookie8 있음 ? : <%=cookies.exists("cookie8") %></p>
	
	<p>cookie7 값 : <%=cookies.getValue("cookie7") %></p>
	<p>cookie8 값 : <%=cookies.getValue("cookie8") %></p>
</body>
</html>
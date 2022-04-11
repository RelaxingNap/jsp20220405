<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />

<title>Insert title here</title>
</head>
<body>
	<h1>ex07.jsp</h1>
	<p>session에 actor 다시 세팅</p>
	
	<%
		session.setAttribute("actor", "yoon yeo jung");
	%>
	<%-- 같은 브라우저내에서는 같은 쿠키값을 가지고 있다면 한 사이트를 사용시 같은 세션정보를 가지고 있다. --%>
</body>
</html>
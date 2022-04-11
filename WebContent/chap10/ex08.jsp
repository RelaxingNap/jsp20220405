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
	<h1>ex08.jsp</h1>
	<h2>session에 names attribute(속성) setting</h2>
	<%
		List<String> list = new ArrayList<>();
		list.add("iron man");
		list.add("captain");
		list.add("브로커");
		
		session.setAttribute("names", list);
	%>
</body>
</html>
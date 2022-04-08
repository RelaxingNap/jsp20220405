<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />

<title>Insert title here</title>
</head>
<body>
	
	<h1><%= request.getParameter("movie") %></h1>
	<h1><%= request.getParameter("age") %></h1>
	<h1><%= request.getParameter("name") %></h1>
	<h1><%= request.getParameter("address") %></h1>	
	<!-- POST방식이더라도 GET처럼 form action attribute에 추가하여 값을 넘길 수 있다. -->
	
</body>
</html>
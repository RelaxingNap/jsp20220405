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

<h1>ex04to.jsp</h1>
<%
	String movie = (String)request.getAttribute("movie");
%>
<!-- 전달 못받음 (2번째 request가 생겨서 첫번째 request에서 세팅해서 넘겨주려던 내용이 못넘어옴) -->
<%=movie %>
<!-- queryString으로 String data전달받는건 가능 -->
<%=request.getParameter("age") %>
</body>
</html>
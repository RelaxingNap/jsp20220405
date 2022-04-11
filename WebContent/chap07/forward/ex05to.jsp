<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Object obj = request.getAttribute("movieMap");
	Map<String, String> map = (Map<String, String>) obj;
%>

<%--오류없이 출력되도록 ex05from.jsp --%>
<p><%=map.get("movie1") %></p>
<p><%=map.get("movie2") %></p>
</body>
</html>
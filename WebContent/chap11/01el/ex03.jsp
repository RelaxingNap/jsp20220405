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
	<h1>Attribute(속성)이 존재하지 않을때 : 표시안됨</h1>
	
	<%
		pageContext.setAttribute("pageAttr1", "PAGE ATTRIBUTE1");
	%>
	
	<p>${pageAttr1 }</p>
	<p>${pageAttr2 }</p> <!-- 출력 안됨 -->
	<p><%=pageContext.getAttribute("pageAttr2") %></p> <!-- 없을 시 null출력 -->
</body>
</html>
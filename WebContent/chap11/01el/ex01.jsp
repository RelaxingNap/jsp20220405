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
	<h1>EL (Expression Language)</h1>
	
	<p>작성법 : \${attribute }</p>
	
	<%
		pageContext.setAttribute("pageAttr1", "PAGE ATTRIBUTE");
	%>
	<p><%= pageContext.getAttribute("pageAttr1") %></p>	
	<p> ${pageAttr1 }</p>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>

<%!
	public int multi(int a, int b) {
	return a * b;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- jsp는 java로 번역 가능 -->
	<h1>구구단 2단 ~ 9단</h1>
	<% for(int i = 1; i <= 9; i++) {
			for(int j = 2; j <= 9; j++) { %>
	<%= j + "X" + i + "=" + multi(i,j)%>
	<% } %>
	<br />
	<% } %>
</body>
</html>
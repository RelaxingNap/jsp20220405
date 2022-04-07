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
<!-- dan 요청 파라미터 값에 따라 구구단 출력되도록 작성 -->

<%
	String danStr = request.getParameter("dan");

	if(danStr == null) { 
%>
		<h1>단 번호를 입력하세요</h1>
<% } else {
		int num = Integer.parseInt(danStr);
		
		for(int i = 1; i <= 9; i++) { 
%>
		<h3> <%= num %> X <%= i %> = <%= num*i %> </h3> 
<% 		}
	}
%>
%>
</body>
</html>
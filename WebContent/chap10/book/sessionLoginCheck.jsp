<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String memberId = (String) session.getAttribute("MEMBERID");
	boolean login = memberId == null ? false : true;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />

<title>로그인 여부 검사</title>
</head>
<body>
	<%
		if(login) {
	%>		
		아이디 "<%= memberId %>" 로 로그인 한 상태
	<%
		} else {
	%>
		로그인 하지 않은 상태
	<%
		}
	%>
	
</body>
</html>
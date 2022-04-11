<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String id = request.getParameter("memberId");
	if(id != null && id.equals("madvirus")) {
		response.sendRedirect("index.jsp");
	} else {
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />

<title>로그인의 실패</title>
</head>
<body>
	잘못된 아이디 입니다.
</body>
</html>
<%
	}
%>
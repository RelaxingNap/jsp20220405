<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*, java.text.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<%
	Date time = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>

<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />

<title>세션정보</title>
</head>
<body>
세션 id : <%= session.getId() %> <br />
<%
	time.setTime(session.getCreationTime());
%>
세선 생성시간 : <%= formatter.format(time) %> <br />
<%
	time.setTime(session.getLastAccessedTime());
%>
최근 접근시간 : <%= formatter.format(time) %>

</body>
</html>
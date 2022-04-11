<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*, java.text.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />

<title>Insert title here</title>
</head>
<body>
	<h1>session time out</h1>
	<h2>id : <%= session.getId() %></h2>
	<%
		Date date = new Date(session.getLastAccessedTime());
		DateFormat formatter = new SimpleDateFormat("HH:mm:ss.SSS");
		formatter.setTimeZone(TimeZone.getTimeZone("Asia/Seoul"));
		String dateFormatted = formatter.format(date);
	%>
	
	<h2>마지막 접근 : <%=dateFormatted %></h2>
</body>
</html>
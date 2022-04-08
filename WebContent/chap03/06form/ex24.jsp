<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*, java.io.*" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%
	BufferedReader rd = request.getReader();

	String line = "";
	
	while((line = rd.readLine()) != null) {
		System.out.println(line);
	}

%>




<title>Insert title here</title>
</head>
<body>

</body>
</html>
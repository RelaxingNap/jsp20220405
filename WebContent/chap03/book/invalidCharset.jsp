<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- 잘못된 charset사용시 글자가 깨져서 나옴 --%>
<%@ page import = "java.util.*" %>
<%
	Date now = new Date();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재시각</title>
</head>
<body>
현재시각 : <%= now %>
</body>
</html>
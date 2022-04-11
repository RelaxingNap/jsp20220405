<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />

<title>include directive</title>
</head>
<body>
	<%
		int number = 10;
	%>
	<%@ include file = "includee.jspf" %>
	
	공통변수 Data Folder = "<%= dataFolder %>"
	
	<%-- 톰캣에서 include directive통해서 포함된 파일이 변경될 경우, 자동으로 변경내역 반영 --%>
</body>
</html>
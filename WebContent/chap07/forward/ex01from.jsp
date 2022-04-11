<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>ex01from.jsp</h1>
	
	<%-- forward action tag--%>
	<%-- 실행흐름을 forward 태그의 page속성의 명시된 값으로 바꿈 --%>
	<%-- 출력이 초기화 됨 --%>
	<jsp:forward page="ex01to.jsp"></jsp:forward>
</body>
</html>
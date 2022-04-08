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
	<h1>post 방식 전송 한글 처리</h1>
	
	<form action="ex22.jsp" method="post">
		<input type="text" name="movie" />
		<input type="text" name="actor" />
		<input type="submit" value="전송" />
	</form>
</body>
</html>
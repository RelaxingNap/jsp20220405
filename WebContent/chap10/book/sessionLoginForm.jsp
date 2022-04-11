<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />

<title>로그인 폼</title>
</head>
<body>
	<form action="sessionLogin.jsp" method = "post">
	아이디 : <input type="text" name = "id" size = "10"/>
	암호 : <input type="password" name = "password" size = "10" />
	<input type="submit" value = "로그인" />
	
	</form>
</body>
</html>
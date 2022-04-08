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
	<h1>계산기</h1>
	
	<form action="ex12.jsp">
		<input type="text" />
		<select name="calculator" id="">
			<option value="plus">+</option>
			<option value="minus">-</option>
			<option value="multiply">X</option>
			<option value="divide">/</option>
		</select>
		<input type="text" />
		
		<input type="submit" value="계산" />
	
	</form>
</body>
</html>
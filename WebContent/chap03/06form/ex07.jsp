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

	<h1></h1>
	<form action="ex08.jsp">
	<!-- 같은이름을 다른값으로 처리가능 -->
	<!-- (input:c+br)*5+input:submit -->
		<input type="checkbox" name="movie" id="" value="avengers" /> 어벤져스
		<br />
		<input type="checkbox" name="movie" id="" value="scream" /> 스크림
		<br />
		<input type="checkbox" name="movie" id="" value="morbius" /> 모비우스
		<br />
		<input type="checkbox" name="movie" id="" value="spiderman" /> 스파이더맨
		<br />
		<input type="checkbox" name="movie" id="" value="ambulance"/> 앰뷸런스
		<br />
		<input type="submit" value="골랐습니다" /> 
	
	</form>
</body>
</html>
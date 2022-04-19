<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
</head>
<body>
	<h1>구구단 2, 4, 6, 8단 출력</h1>
	<%-- step을 통해서 index값 조절 가능. 덧셈으로 커지는것만 가능 --%>
	<c:forEach begin="2" end="9" step="2" var="i">
		<h3>${i }단</h3>
		<p>
			<c:forEach begin="1" end="9" var="j">
				${i } * ${j } = ${i * j } &nbsp;&nbsp;&nbsp;       
			</c:forEach>
		</p>
	</c:forEach>
	
</body>
</html>
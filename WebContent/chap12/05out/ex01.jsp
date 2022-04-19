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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>

<title>Insert title here</title>
</head>
<body>
	<h1>c:out</h1>
	
	<p><c:out value="hello"></c:out></p>
	<p>hello</p>
	
	<hr />
	
	<p><br>은 새로운 줄이다.</p>
	<%-- 	<br>이실행 안됨 --%>
	<p>&lt;br&gt;은 새로운 줄이다.</p>
	<p><c:out value="<br>"></c:out>은 새로운 줄이다.</p>
	<%-- c:out을 사용하는 이유 : script문이 웹페이지에 사용되어 웹페이지의 내용이 위,변조 및 다른 공격이 이루어 지는것을 방지 --%>
		
</body>
</html>
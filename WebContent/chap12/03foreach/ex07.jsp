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
	<%
		String[] list = {"deadpool", "logan" , "captain", "ironman", "blackpanther" };
	
		pageContext.setAttribute("list", list);
	%>
	
	<!-- <ul>
		<li>deadpool</li>
		<li>logan</li>
		<li>captain</li>
		<li>ironman</li>
		<li>blackpanther</li>
	</ul> -->
	<ul>
	<c:forEach items="${list }" var="movie">
		<li>${movie }</li>	
	</c:forEach>
	</ul>
</body>
</html>
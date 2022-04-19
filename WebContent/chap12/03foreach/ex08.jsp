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
		String[] movies = {"avengers", "thor", "ironman", "superman", "batman" };
	
		pageContext.setAttribute("movies", movies);
	%>
	
	<%-- items 배열 내부에서도 begin end사용해서 원하는 배열범위만큼 반복하도록 지정 가능 --%>
	<c:forEach items="${movies }" var="movie" begin="3" end="4">
		<p>${movie }</p>
	</c:forEach>
	
	<hr />
	<%-- avengers, thor, ironman 출력 --%>
	<c:forEach items="${movies } var="movie" begin="0" end="2">
		<p>${movie }</p>
	</c:forEach>
	
</body>
</html>
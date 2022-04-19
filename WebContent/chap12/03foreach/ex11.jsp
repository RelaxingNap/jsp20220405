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
	<h1>foreach에서 Set 탐색</h1>
	
	<%
		Set<String> set = new HashSet<>();
		set.add("ironman");
		set.add("superman");
		set.add("spiderman");
		set.add("superman");
		set.add("batman");
		
		pageContext.setAttribute("man", set);
	%>
	<%-- set이라서 foreach태그에서 순서가 보장되지 않음 --%>
	<%-- begin end 사용은 가능하지만 사용하지 말것 --%>
	<c:forEach items="${man }" var="item">
		<h1>man : ${item }</h1>
	</c:forEach>
	
</body>
</html>
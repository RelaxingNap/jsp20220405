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
		Map<String, String> map = new HashMap<>();
		map.put("song", "butter");
		map.put("group", "bts");
		map.put("season", "spring");
		map.put("framework", "struts");
	
		pageContext.setAttribute("maps", map);
	%>
	<%-- map안의 내용 출력. map의 특성상 순서를 고려하지 않고 출력 --%>
	<%-- map안의 내용의 타입은 Map.Entry 타입임 --%>
	<c:forEach items="${maps }" var="item">
		<h1>${item.key } : ${item.value }</h1>
	</c:forEach>
	
</body>
</html>
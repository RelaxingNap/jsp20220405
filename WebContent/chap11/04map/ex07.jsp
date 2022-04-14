<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "chap11.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />

<title>Insert title here</title>
</head>
<body>
	<%
		Map<String, Object> map = new HashMap<>();		
	
		map.put("list", Arrays.asList("tesla", "kia"));
		map.put("cars", new Car("hyundai", 3000));	
	
		pageContext.setAttribute("map", map);
	%>
	<%-- map에 value자리에 Object type으로 지정하여 생성하면, list도 넣을 수 있고, javabean규약 지킨 클래스도 El로 쓸 수 있음 --%>
	<p>${map.list[0] }</p>
	<p>${map.list[1] }</p>
	<p>${map.cars.model }</p>
	<p>${map.cars.price }</p>
	
</body>
</html>
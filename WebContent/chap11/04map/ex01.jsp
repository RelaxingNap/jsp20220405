<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />

<title>Insert title here</title>
</head>
<body>
	<h1>Attribute가 Map 일 때...</h1>
	
	<%
		Map<String, String> map = new HashMap<>();
		map.put("singer", "서태지");
		map.put("soccer", "손흥민");
		map.put("group", "bts");
		map.put("my car", "tesla");
		
		pageContext.setAttribute("map", map); 
	%>
	<p>${map.singer }</p> <%-- 서태지 --%> <%-- Map의 key값을 javabeans의 property처럼 사용하면 출력 가능 --%>
	<p>${map.soccer }</p>
	<p>${map.group }</p>
	<%-- <p>${map.my car }</p> --%> <%-- javabeans의 property처럼 사용시 띄어쓰기를 허용 안함--%>
	
	<hr />
	
	<p>${map["singer"] }</p> <%-- Map의 key값을 javabeans의 property처럼 사용하면 출력 가능 --%>
	<p>${map["soccer"] }</p>
	<p>${map["group"] }</p>
	<p>${map["my car"] }</p> <%-- 가능. 띄어쓰기 허용됨. --%>
</body>
</html>
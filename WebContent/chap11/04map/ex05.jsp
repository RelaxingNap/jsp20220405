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
	<%
		Map<String, List<String>> map = new HashMap<>();
		map.put("cars", Arrays.asList("tesla", "kia", "hyundai"));
		map.put("coffee", Arrays.asList("latte", "espresso", "capuccino"));
	
		pageContext.setAttribute("values", map);
	%>
	
	<%-- tesla, kia, hyundai, latte, espresso, capuccino가 출력 되도록 el를 사용해서 코드 작성 --%>
	
	<%-- list접근시 배열처럼 인덱스 번호로 접근해야함. --%>
	<p>${values.cars[0] }</p>
	<p>${values.cars[1] }</p>
	<p>${values.cars[2] }</p>
	
	<p>${values.coffee[0] }</p>
	<p>${values.coffee[1] }</p>
	<p>${values.coffee[2] }</p>
	
</body>
</html>
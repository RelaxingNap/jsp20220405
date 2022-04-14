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
		List<List<String>> list = new ArrayList<>();
	
		List<String> item1 = new ArrayList<>();
		List<String> item2 = new ArrayList<>();
		
		item1.add("winter");
		item1.add("summer");
		item1.add("spring");
		
		item2.add("jimin");
		item2.add("suga");
		item2.add("v");
		
		list.add(item1);
		list.add(item2);
		
		pageContext.setAttribute("list", list);
	%>
	<%-- list내부의 list에 접근시 (2차원 배열과 비슷) --%>
	<p>${list[0][0] }</p> <%-- winter --%>
	<p>${list[0][1] }</p> <%-- summer --%>
	<p>${list[0][2] }</p> <%-- spring --%>
	
	<hr />
	
	<p>${list[1][0] }</p>
	<p>${list[1][1] }</p>
	<p>${list[1][2] }</p>
	
	
</body>
</html>
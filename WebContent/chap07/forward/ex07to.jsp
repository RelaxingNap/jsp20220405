<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Object obj1 = request.getAttribute("names");
		Object obj2 = request.getAttribute("movies");
		
		List<String> list = (List<String>) obj1; //표현언어에서 이 위험한 코드를 쓰지 않게 됨.
		Map<String,String> map = (Map<String,String>) obj2;
	%>
	
	<ul>
	<%
		for(String name : list) {
	%>
	<li><%= name %></li>
	<%
		}
	%>
	</ul>
	
	<%-- <ul>
	<%
		Set<String> keys = map.keySet();
		for(String key : keys) {
	%>
	<li><%=key %> : <%= map.get(key) %></li>
	<%
		}
	%>
	</ul> --%>
	
	<ul>
	<%
		for(Map.Entry<String, String> entry : map.entrySet()) {
	%>
	<li><%=entry.getKey() %> : <%= entry.getValue() %></li>
	<%
		}
	%>
	</ul>
	
</body>
</html>
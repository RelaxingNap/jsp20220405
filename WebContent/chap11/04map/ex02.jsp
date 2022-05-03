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
		Map<String, String> m1 = new HashMap<>();
		Map<String, String> m2 = new HashMap<>();
		
		m1.put("boy group", "bts");
		m1.put("girl group", "aespa");
		
		m2.put("car", "현대");
		m2.put("season", "spring");
		
		pageContext.setAttribute("map1", m1);
		pageContext.setAttribute("map2", m2);
		
	%>

	<p>${map1["boy group"] }</p> <%-- bts --%>
	<p>${map1["girl group"] }</p> <%-- aespa --%>

	<p>${map2.car }</p>	<%-- 현대 --%>
	<p>${map2.season }</p> <%-- spring --%>
</body>
</html>
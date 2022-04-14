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
		List<String> list = new ArrayList<>();
		list.add("111");
		list.add("222");
		list.add("333");
		list.add("444");
		list.add("555");
		
		pageContext.setAttribute("myList", list);
	%>
	

	<%
		for(int i = 0; i < list.size(); i++) {
			pageContext.setAttribute("index", i);
	%>
		<p>${myList[index] }</p> <%-- 5개 출력되도록 --%>
	<%
	}
	%>


</body>
</html>
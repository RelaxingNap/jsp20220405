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
		Car c1 = new Car("hyundai", 100);
		Car c2 = new Car("tesla", 200);
		List<String> list1 = new ArrayList<>();
		List<String> list2 = new ArrayList<>();
		
		list1.add("lee");
		list1.add("son");
		list2.add("cha");
		
		c1.setOwners(list1);
		c2.setOwners(list2);
		
		pageContext.setAttribute("aCar", c1);
		pageContext.setAttribute("bCar", c2);
	%>
	<%-- list를 javabean객체내에서 property로 사용시 --%>
	<p>${aCar.owners[1] }</p> <%-- son --%>
	<p>${bCar.owners[0] }</p> <%-- cha --%>
</body>
</html>
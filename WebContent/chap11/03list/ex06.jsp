<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import="chap11.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />

<title>Insert title here</title>
</head>
<body>
	<h1>List의 item타입이 javabeans 일 때 </h1>
	
	<%
		List<Car> list = new ArrayList<>();
		list.add(new Car("tesla", 3000));
		list.add(new Car("volvo", 2000));
		list.add(new Car("hyundai", 4000));
		list.add(new Car("kia", 2500));
		
		pageContext.setAttribute("Cars", list);
	%>
	<%-- 
	<p>${Cars[0].model }</p>
	<p>${Cars[0].price }</p>
	<p>${Cars[1].model }</p>
	<p>${Cars[1].price }</p>
	<p>${Cars[2].model }</p>
	<p>${Cars[2].price }</p>
	<p>${Cars[3].model }</p>
	<p>${Cars[3].price }</p>
	 --%>
	<%
		for(int i = 0; i < list.size(); i++) {
			pageContext.setAttribute("index", i);
	%>	
		<p>${Cars[index].model }</p>
		<p>${Cars[index].price }</p>
	<% 
	}
	%> 
	
	
</body>
</html>
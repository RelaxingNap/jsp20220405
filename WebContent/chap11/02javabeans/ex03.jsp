<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import="chap11.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>

	<%
		Car car = new Car();
		car.setModel("kia");
		car.setPrice(5000);
		
		pageContext.setAttribute("car1", car);
	%>
	
	<h1>EL문법</h1>
	<p>${car1.model }</p>
	<p>${car1.price }</p>
	
	<hr />
	<h1>EL문법(대괄호 사용)</h1>
	<p>${car1["model"] }</p> <!-- 대괄호 안에는 String만 사용 가능. 그래서 ""안에 property작성 -->
	<p>${car1["price"] }</p>
	
</body>
</html>
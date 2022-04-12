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
	<h1>만약 attribute가 없으면...</h1>
	<p>${myCar.model }</p>	<!-- 출력만 안함 -->
	<%-- 
	<%
		Car myCar = (Car) pageContext.getAttribute("myCar");
	%>
	<p><%=myCar.getModel() %></p> --%>
	<!-- NullPointerException으로 인해 500에러 발생 -->
	<!-- 그렇게 되면 페이지를 사용할 수 없으므로 치명적인 문제임 -->
</body>
</html>
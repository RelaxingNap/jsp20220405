<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import="chap07.*" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<% request.setCharacterEncoding("utf-8"); %>

<%
	Car car1 = new Car();
	Car car2 = new Car();
	
	car1.setName("kia");
	car1.setPrice(5000);
	
	car2.setName("hyundai");
	car2.setPrice(10000);
	
	request.setAttribute("myCar", car1);
	request.setAttribute("yourCar", car2);
	
%>


<jsp:forward page="ex09to.jsp"></jsp:forward>
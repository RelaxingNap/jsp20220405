<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import="chap07.*" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<% request.setCharacterEncoding("utf-8"); %>

<%
	Car car = new Car();
	car.setName("kia");
	car.setPrice(500);
	
	request.setAttribute("myCar", car);
%>


<jsp:forward page="ex08to.jsp"></jsp:forward>
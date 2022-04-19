<%@page import="chap11.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	String idStr = request.getParameter("id");	
	int id = Integer.parseInt(idStr);
	
	
	List<Car> list = (List<Car>) application.getAttribute("cars");
	list.remove(id);
	
	response.sendRedirect("ex18carForm.jsp");
%>
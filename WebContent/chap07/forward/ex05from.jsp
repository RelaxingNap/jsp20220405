<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<% request.setCharacterEncoding("utf-8"); %>

<%
	Map<String, String> map = new HashMap<>();
	map.put("movie1", "111");
	map.put("movie2", "222");
	
	request.setAttribute("movieMap", map);
%>

<jsp:forward page="ex05to.jsp"></jsp:forward>
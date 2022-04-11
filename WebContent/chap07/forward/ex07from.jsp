<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<% request.setCharacterEncoding("utf-8"); %>

<%
List<String> list = new ArrayList<>();
Map<String, String> map = new HashMap<>();

list.add("sunja");
list.add("captain");
list.add("ironman");

map.put("doctor", "5월 4일");
map.put("spiderman", "12월 1일");
map.put("avengers", "5월 5일");

	request.setAttribute("names", list);
	request.setAttribute("movies", map);

%>

<jsp:forward page="ex07to.jsp"></jsp:forward>
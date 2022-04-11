<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<% request.setCharacterEncoding("utf-8"); %>

<%
	String job = "doctor";
	
	List<String> list = new ArrayList<>();
	
	list.add("1");
	list.add("2");
	list.add("3");

	
	request.setAttribute("job", job);
	request.setAttribute("job", "strange");
	request.setAttribute("names", list);
	
%>
<%--request.setAttribute와 request.getAttribute는 Map<String,Object>와 비슷한 느낌으로 사용하면 됨 --%>

<jsp:forward page="ex06to.jsp"/>
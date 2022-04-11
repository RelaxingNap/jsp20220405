<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<% request.setCharacterEncoding("utf-8"); %>

<%--jsp:param으로 넣을 수 있는 값은 String밖에 안됨 --%>
<%-- request parameter는 String만 가능 --%>
<%-- request attribute는 Object를 넣을 수 있음(더 다양한 내용의 정보를 넣을 수 있음) --%>
<%
	List<String> list = new ArrayList<>();
	list.add("jimin");
	list.add("rm");
	list.add("jhope");
	
	request.setAttribute("singer", list);
%>


<jsp:forward page="ex04to.jsp">
	<jsp:param value="doctor" name="job"/>
</jsp:forward>
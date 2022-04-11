<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

body_sub에서 name 파라미터 값 : <%= request.getParameter("name") %>

<br />
name 파라미터 값 목록 : 
<%--기존 파라미터 값 유지한채 새로운 파라미터 값 추가하며, 새롭게 추가된 파라미터값이 우선된다. --%>
<ul>
	<%
		String[] names = request.getParameterValues("name");
		for(String name : names) {
	%>
		<li><%= name %></li>
	<%
		}
	%>	

</ul>
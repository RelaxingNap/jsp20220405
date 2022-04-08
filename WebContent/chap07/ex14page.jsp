<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div>
	<!-- 게시판처럼 게시판번호 나누기 -->
	<%
		String startStr = request.getParameter("start");
		String endStr = request.getParameter("end");
		
		int start = Integer.parseInt(startStr);
		int end = Integer.parseInt(endStr);
		
		out.print("|");
		for(int i = start; i <= end; i++) {
	%> <a href="#"><%= i %> </a> |
	<%
		}
	%>
</div>
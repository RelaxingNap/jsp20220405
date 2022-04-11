<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	if(id.equals(password)){
		session.setAttribute("MEMBERID", id); // 세션에 데이터 저장시 연관된 정보를 클래스로 묶어서 정리하면
											  // 나중에 문제가 발생하더라도 exception이 아닌 컴파일에러가 나기때문에
											  // 상대적으로 문제를 해결하는게 쉬워진다.
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />

<title>로그인 성공</title>
</head>
<body>
	로그인에 성공했습니다.
</body>
</html>
<% 
	} else { // 로그인 실패시
%>
<script>
	alert("로그인에 실패하였습니다.");
	history.go(-1);
</script>
<%
	}
%>





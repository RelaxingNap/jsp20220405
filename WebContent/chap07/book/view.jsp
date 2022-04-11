<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />

<title>Insert title here</title>
</head>
<body>
<!-- 컨텍스트명은 계속 바뀔 수 있기 때문에 기존방법으로 절대주소 쓰는거보단 getContextPath()로 request에서 받아서 쓰는게 나음 -->
<form action="<%=request.getContextPath() %>/chap07/book/view.jsp">
	보고싶은 페이지 선택
	<select name="code" id=""></select>
	<option value="A">A 페이지</option>
	<option value="B">B 페이지</option>
	<option value="C">C 페이지</option>

</form>
</body>
</html>
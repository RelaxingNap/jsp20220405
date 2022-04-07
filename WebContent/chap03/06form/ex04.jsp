<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>form 요소들 (input, textarea, select, button)</h1>
	
	<h2>input</h2>
	<p>input요소의 type속성에 따라 입력하는 방법이 달라짐</p>
	
	<hr />
	<h1>type="text"</h1>
	
	<form action="ex05.jsp">
		<!-- text 입력란 -->	
		<!-- name attribute 작성 안할 시 전송 안함 -->
		<input type="text" name="group"/>
		
		<!-- 전송 -->
		<input type="submit" />
	</form>
	<hr />
	<h1>type="password"</h1>
	
	<form action="ex05.jsp">
	<!-- 패스워드처럼 안보이게 입력 할 수 있음 -->
		<input type="password" name="pw" />
		<input type="submit" />
	
	</form>
	<hr />
	
	<h1>type="date"</h1>
	<!-- 달력모양이 뜨고 그 달력으로 데이터 입력 가능 -->
	<form action="ex05.jsp">
	<!-- 입력한 날짜 데이터는 스트링으로 전송 -->
		<input type="date" name = "birth" />
		<input type="submit" />
		
	</form>
	
	<hr />
	<h1>type="number", type="email", type="file"</h1>
	<form action="ex05/jsp">
		<input type="number" name = "num" />
		<input type="email" name = "email"/>
		<input type="file" name = "fileName"/>
		<input type="submit" />
	
	</form>
	<!-- input type에 따라서 다양한 방법으로 데이터를 전송 할 수 있음 -->
	
	
</body>
</html>
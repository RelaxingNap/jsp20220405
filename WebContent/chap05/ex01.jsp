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
	<h1>jsp 기본객체 8개(+1 exception)</h1>
	<ul>
		<li>request : HttpServletRequest</li>
		<li>response : HttpServletResponse</li>
		<li>pageContext : PageContext</li>
		<li>session : HttpSession</li>
		<li>application : SevletContext</li>
		<li>out : JspWriter</li>
		<li>config : ServletConfig</li>
		<li>page : Object</li>
	</ul>
	
	<h1>Attribute를 저장하거나 꺼낼 수 있는 객체 4개</h1>
	<ul>
		<li>request : HttpServletRequest (request 유지중 사용가능)</li>
		<li>pageContext : PageContext (가장 좁은 영역 : 하나의 페이지 내에서 사용 가능)</li>
		<li>session : HttpSession (session 유지중 사용가능)</li>
		<li>application : SevletContext (가장 넓은 영역 : 어플리케이션 내에서 모두 사용가능)</li>
	</ul>
</body>
</html>
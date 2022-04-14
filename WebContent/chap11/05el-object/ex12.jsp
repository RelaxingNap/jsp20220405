<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
</head>
<body>
	<%
		pageContext.setAttribute("attr1", "value1");
		request.setAttribute("attr2", "value2");
		session.setAttribute("attr3", "value3");
		application.setAttribute("attr4", "value4");
		
		pageContext.setAttribute("attr5", "page value");
		request.setAttribute("attr5", "request value");
		session.setAttribute("attr5", "session value");
		application.setAttribute("attr5", "application value");
	
	%>
	
	<p>${attr1 }</p>
	<p>${pageScope.attr1 }</p>
	
	<p>${attr2 }</p>
	<p>${requestScope.attr2 }</p>
	
	<p>${attr3 }</p>
	<p>${sessionScope.attr3 }</p>
	
	<p>${attr4 }</p>
	<p>${applicationScope.attr4 }</p>
	
	<p>${attr5 }</p> <%-- page value --%>
	<p>${requestScope.attr5 }</p>
	<p>${sessionScope.attr5 }</p>
	<p>${applicationScope.attr5 }</p>
	
	<%-- 같은 attribute name으로 여러객체에 세팅되어있을 시 --%>
	<%-- el로 작성하면 제일 먼저 찾게 되는 pageContext영역에 세팅되어있는 값을 찾아가게됨 --%>
	<%-- 하지만 다른 영역의 attribute로 접근하려면 requestScope같은 다른영역의 객체를 이용하면 다른 영역의 값에 접근가능함  --%>
</body>
</html>
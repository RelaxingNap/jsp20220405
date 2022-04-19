<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>

<script>
	$(function () {
		$("#addOwnerButton").click(function (){
			$("#ownerInputContainer").append("<input type='text' name='owner' /> <br />");
		});
	});
</script>

<title>Insert title here</title>
</head>
<body>
	<h1>차 등록 폼</h1>
	
	<form action="ex19carProcess.jsp" method="post">
		모델명 : <input type="text" name="model"/> <br />
		가격 : <input type="text" name="price"/> <br />
		사용가능 : <input type="checkbox" name="available" value="true" /> <br />
		사용자 <button id="addOwnerButton" type="button">
			<i class="fa-solid fa-plus"></i>
		</button>
		<!-- button이 form tag안에 있으면 submit역할을 함. 그래서 type을 button을 지정해야함 -->
		<!-- button#addOwnerButton>i.fa-solid.fa-plus -->
		<div id="ownerInputContainer">
		
		</div>
		
		<input type="submit" value="등록" />
	</form>
	<hr />
	
	<c:if test="${empty applicationScope.cars }" var="emptyCars">
		<p class="text-warning">등록된 차가 없습니다.</p>
	</c:if>
	
	<c:if test="${not emptyCars}">
		<!-- table.table.table-bordered>thead>tr>th*3^^tbody -->
		<table class="table table-bordered">
			<thead>
				<tr>
					<th></th>
					<th>#</th>
					<th>모델</th>
					<th>가격</th>
					<th>가능여부</th>
					<th>소유자들</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${applicationScope.cars }" var="car" varStatus="status">
					
					<c:url value="ex19carDelete.jsp" var="deleteUrl">
						<c:param name="id" value="${status.index }"></c:param>
					</c:url>
					
					<tr>
						<td><a href="${deleteUrl }"><i class="fa-solid fa-trash-can"></i></a></td>
						<td>${status.count }</td>
						<td><c:out value="${car.model }"></c:out></td>
						<td>${car.price }</td>
						<td>${car.available }</td>
						<td>
							<c:forEach items="${car.owners }" var="owner" varStatus="status">
								<c:out value="${owner }"></c:out><c:if test="${not status.last }"><c:out value=","></c:out></c:if>
							</c:forEach>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>
</body>
</html>
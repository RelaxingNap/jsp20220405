<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "my" tagdir="/WEB-INF/tags/app01" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>

<title>Insert title here</title>
</head>
<body>
	<!-- .container>.row>.col>h1{글 목록} -->
	<my:navBar current="list"/>
	<div class="container">
		<div class="row">
			<div class="col">
				<h1>글 목록</h1>
				
				<c:if test="${not empty param.successInsert }">
					<c:if test="${param.successInsert }">
						<div class="alert alert-primary">
							게시물이 등록되었습니다.
						</div>
					</c:if>
					<c:if test="${not param.successInsert }">
						<div class="alert alert-danger">
							게시물 등록중 문제 발생하였습니다.
						</div>
					</c:if>
				</c:if> 
				
				<c:if test="${not empty param.successDelete }">
					<c:if test="${param.successDelete }">
						<div class="alert alert-primary">
							게시물이 삭제되었습니다.
						</div>
					</c:if>
					<c:if test="${not param.successDelete }">
						<div class="alert alert-danger">
							게시물 삭제중 문제 발생하였습니다.
						</div>
					</c:if>
				</c:if>
								
				<!-- table.table.table-bordered>thead>tr>th*3^^tbody -->
				<table class="table table-bordered">
					<thead>
						<tr>
							<th><i class="fa-solid fa-hashtag"></i></th>
							<th>제목</th>
							<th><i class="fa-solid fa-calendar"></i></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${boardList }" var="board">
							<tr>
								<td>${board.id }</td>
								<td>
									<c:url value="/board/get" var="getUrl">
										<c:param name="id" value="${board.id }"></c:param>
									</c:url>
									<%-- c:url : contextpath도 자동으로 세팅해주어서 사용 --%>
									<a href="${getUrl }">${board.title }</a>
								</td>
								<td>${board.prettyInserted }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<my:navSearch/>
				<my:navList />
			</div>
		</div>
	</div>
</body>
</html>
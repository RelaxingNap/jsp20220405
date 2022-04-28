<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

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
	<div class="container">
		<div class="row">
			<div class="col">
				<h1>글 목록</h1>
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
				
				<nav>
					<ul class="pagination justify-content-center">
						<c:if test="${prevPage >= 1 }">
							<li class="page-item">
								<c:url value="/board/list" var="prevList">
									<c:param name="page" value="${prevPage }"></c:param>
								</c:url>
								<a href="${prevList }" class="page-link">
									<span>&laquo;</span>
								</a>
							</li>
						</c:if>
						<c:forEach begin="${startPage }" end="${endPage }" var="pageNum">
						<li class="page-item ${currentPage == pageNum ? 'active' : '' }">
							<c:url value="/board/list" var="presentPage">
								<c:param name="page" value="${pageNum }"></c:param>
							</c:url>
							<a href="${presentPage }" class="page-link">${pageNum }</a>
						</li>
						</c:forEach>
						<c:if test="${endPage != lastPage }">
							<li class="page-item">
								<c:url value="/board/list" var="nextList">
									<c:param name="page" value="${nextPage }"></c:param>
								</c:url>
								<a href="${nextList }" class="page-link">
									<span>&raquo;</span>
								</a>
							</li>
						</c:if>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</body>
</html>
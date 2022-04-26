<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>

<title>Insert title here</title>
</head>
<body>
	
	<div class="container">
		<div class="row">
			<div class="col">
			<h1 style="text-align: center;">고객 명단</h1>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>고객번호</th>
							<th>고객명</th>
							<th>나라</th>
							<th>도시</th>
							<th>우편번호</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${customerList }" var="customer">
							<tr>
								<td>${customer.id }</td>
								<td>${customer.customerName }</td>
								<td>${customer.country }</td>
								<td>${customer.city }</td>
								<td>${customer.postalCode }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
				<!-- nav>ul.pagination>li.page-item>a.page-link -->
				<nav>
					<ul class="pagination justify-content-center">
						<!-- li.page-item>a.page-link>span{&laquo;} -->
						<c:if test="${prevPage >= 1 }">
							<li class="page-item">
								<a class="page-link" href="S14Servlet19?page=${prevPage }">
									<span>&laquo;</span>
								</a>
							</li>
						</c:if>
						<c:forEach begin="${startPage }" end="${endPage }" var="pageNum">
							<li class="page-item ${pageNum == currentPage ? 'active' : '' }">
								<a href="S14Servlet19?page=${pageNum }" class="page-link">${pageNum }</a>
							</li>
						</c:forEach>
						<!-- li.page-item>a.page-link>span{&raquo;} -->

						<c:if test="${endPage != lastPage }">
							<li class="page-item">
								<a class="page-link" href="S14Servlet19?page=${nextPage }">
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
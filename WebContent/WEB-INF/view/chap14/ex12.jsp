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

<script>
	$(function() {
		$(".customer-delete").click(function (e) { 
			e.preventDefault();// 이벤트 진행을 더 이상 시키지 않는 메소드
					
			if(confirm("삭제하시겠습니까")){
				$(this).closest("form").submit(); //현재 위치에서 가장 가까운 form tag에서 submit실행
			}	
		});			
	});
</script>

<title>Insert title here</title>
</head>
<body>
	
	<c:if test="${not empty param.success }">
		<c:if test="${param.success }">
			<div class="container">
				<div class="alert alert-success">
					삭제를 성공하였습니다.
				</div>
			</div>
		</c:if>
		<c:if test="${not param.success }">
			<div class="container">
				<div class="alert alert-danger">
					삭제도중 문제가 발생하였습니다.
				</div>
			</div>
		</c:if>
		
	</c:if>
	
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
							<th>삭제</th>
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
								<td>
									<form method="post">
										<input type="hidden" name="customerId" value="${customer.id }"/>
										<button class="customer-delete btn-danger"><i class="fa-solid fa-trash-can"></i></button>
									</form>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
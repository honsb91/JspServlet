<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<title>Insert title here</title>

<%@ include file="/include/header.jsp"%>

<section class="page-section">
	<ul class="nav justify-content-center">
		<li class="nav-item"><a class="nav-link active" href="insert.sg">추가</a></li>
		<li class="nav-item"><a class="nav-link" href="update.sg">수정</a></li>
		<li class="nav-item"><a class="nav-link" href="delete.sg">삭제</a></li>
	</ul>
	<div class="container">
		<form action="list.sg" method="get">
			<table class="table table-striped table-dark p-3 m-5 text-center">
				<thead>
					<tr>
						<th scope="col">사원번호</th>
						<th scope="col">이름</th>
						<th scope="col">입사년도</th>
						<th scope="col">부서명</th>
					</tr>
				</thead>
				<c:choose>
					<c:when test="${empty list}">
						<tr>
							<td colspan="7" class="text-center">데이터가 없습니다.</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${list}" var="vo" varStatus="i">
							<tr>
								<td>${vo.employee_id}</td>
								<td>${vo.name}</td>
								<td>${vo.hire_date}</td>
								<td>${vo.department_name}</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</table>
		</form>
	</div>
</section>
<form action="list.sg" method="get">
	<div class="row g-3 align-items-center ">
		<div class="col-auto">
			<select class="form-select" aria-label="Default select example"	name="option">
				<option value="all" ${option eq 'all' ? ' selected ' : ''}>전체</option>
				<option value="name" ${option eq 'name' ? ' selected ' : ''}>이름</option>
				<option value="department_name"	${option eq 'department_name' ? ' selected ' : ''}>부서명</option>
			</select>
		</div>
		<div class="col-auto">
			<input type="text" class="form-control" name="keyword" placeholder="검색어를 입력하세요" value="${keyword}" />
		</div>
		<div class="col-auto">
			<input type="submit" value="검색" class="btn btn-primary" />
		</div>
	</div>
</form>

<%@ include file="/include/footer.jsp"%>
</html>
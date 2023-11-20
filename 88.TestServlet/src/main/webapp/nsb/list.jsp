<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/include/header.jsp"%>
	<!-- 조회 화면 앞단 -->
	<section class="page-section portfolio" id="portfolio">
		<div class="container">
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">조회
				화면</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<svg class="svg-inline--fa fa-star" aria-hidden="true"
						focusable="false" data-prefix="fas" data-icon="star" role="img"
						xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"
						data-fa-i2svg="">
						<path fill="currentColor"
							d="M316.9 18C311.6 7 300.4 0 288.1 0s-23.4 7-28.8 18L195 150.3 51.4 171.5c-12 1.8-22 10.2-25.7 21.7s-.7 24.2 7.9 32.7L137.8 329 113.2 474.7c-2 12 3 24.2 12.9 31.3s23 8 33.8 2.3l128.3-68.5 128.3 68.5c10.8 5.7 23.9 4.9 33.8-2.3s14.9-19.3 12.9-31.3L438.5 329 542.7 225.9c8.6-8.5 11.7-21.2 7.9-32.7s-13.7-19.9-25.7-21.7L381.2 150.3 316.9 18z"></path></svg>
				</div>
				<div class="divider-custom-line"></div>
			</div>
		</div>
	</section>

	<!-- 조회 화면 테이블 -->
	<table class="table">
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">이름</th>
				<th scope="col">생년월일</th>
				<th scope="col">혈액형</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="dto">
			<tr>
				<th scope="row">${dto. boardnum}</th>
				<td>${dto.username}</td>
				<td>${dto.birthyear}</td>
				<td>${dto.bload}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<%@ include file="/include/footer.jsp"%>
</body>
</html>
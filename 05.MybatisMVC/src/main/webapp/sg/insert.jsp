<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<title>Insert title here</title>

<%@ include file="/include/header.jsp"%>

<section class="page-section">
	<ul class="nav justify-content-center p-3">
		<li class="nav-item"><a class="nav-link active" href="insert.sg">추가</a></li>
		<li class="nav-item"><a class="nav-link" href="update.sg">수정</a></li>
		<li class="nav-item"><a class="nav-link" href="delete.sg">삭제</a></li>
	</ul>
	<div class="container"></div>
</section>
<form>
	<div class="form-group m-3 p-1">
		<input type="text" class="form-control" id="name" placeholder="이름을 입력해주세요" /> 
	</div>
	<div class="form-group m-3 p-1"> 
		<input type="date" class="form-control" id="name" /> 
	</div>
	<div class="form-group m-3 p-1">
		<input type="text" class="form-control" id="name" placeholder="부서명을 입력해주세요" /> 
	</div>
	<input type="button" class="btn btn-primary btn-lg btn-block" value="등록"/>
	</form>

<%@ include file="/include/footer.jsp"%>
</html>
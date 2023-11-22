<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 서블릿에 url을 요청하는거 -->
	<form action="insert.mytbl"> 
		<input type="text" name="col1"/>
		<input type="text" name="col2"/>
		<input type="text" name="col3"/>
		<input type="submit" value="추가"/>	
	</form>
	<form action="update.mytbl"> 
		<input type="text" name="col1"/>
		<input type="text" name="col2"/>
		<input type="text" name="col3"/>
		<input type="submit" value="수정"/>	
	</form>
	<form action="delete.mytbl"> 
		<input type="text" name="col1"/>
		<input type="submit" value="삭제"/>	
	</form>
	<c:forEach items="${list}" var="vo">
		<p>${vo.col1}</p>
	</c:forEach>

</body>
</html>
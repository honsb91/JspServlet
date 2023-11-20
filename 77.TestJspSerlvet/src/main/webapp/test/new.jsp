<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>신규등록 화면</h1>
	<form action="insert.te">
		<div>
		<label>아이디</label>
		<input type="text" id="id" name="userid">
		</div>
		<div>
		<label>비밀번호</label>
		<input type="text" id="pw" name="userpw">
		</div>
		<div>
		<input type="submit" value="전송">
		</div>
	</form>
</body>
</html>
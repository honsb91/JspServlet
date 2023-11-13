<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>구구단 출력 1</h2>
	<table border = 1px,solid>
	<%for(int i =2; i<10; i++){ %>
	<tr>
	<% for(int j=1; j<10; j++){%>
	<td>
	<%=i + " x " + j + " = " + i * j %>
	</td>
		<%}%>
	</tr>
		<%} %>
	</table>
	<h2>구구단 출력 2</h2>
	<table border = 1px,solid>
	<% for(int j=1; j<10; j++){%>
	<tr>
	<%for(int i =2; i<10; i++){ %>
	<td>
	<%=i + " x " + j + " = " + i * j %>
	</td>
		<%}%>
	</tr>
		<%} %>
	</table>
	<h2>구구단 출력 3</h2>
	<table border = 1px,solid>
	<%for(int i =2; i<10; i++){ %>
	<tr >
	<% for(int j=1; j<10; j++){%>
	<td >
	<%=i + " x " + j + " = " + i * j %>
	</td>
		<%}%>
	</tr>
		<%} %>
	</table>
</body>
</html>
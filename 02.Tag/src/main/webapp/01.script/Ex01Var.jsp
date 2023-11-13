<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>자바코드 + HTML 태그</h1>
	<!-- int형 변수 vInt에 숫자 10을 넣고 초기화.
         String형 변수 vStr에 테스트 중입니다 넣고 초기화
         double 변수 하나만들고 3.14넣고 초기화
         ArrayList<String>만들기
         내용 추가 내 이니셜을 하나씩 넣기.

         HTML내부 태그에 해당하는 모든 내용을 출력하기.
     -->
     
     <% int vInt = 10; %>
     <% String vStr = "테스트 중입니다."; %>
     <% double db= 3.14; %>
     <%ArrayList<String> list = new ArrayList<>(); %>
     <%list.add("N"); %>
     <%list.add("S"); %>
     <%list.add("B"); %>
     
     
     <p>vInt : <%= vInt %></p>
     <p>vStr : <%= vStr %></p>
     <p>double : <%= db %></p>
     <P>Array : <%=list.get(0) + list.get(1) + list.get(2) %></P>
     
     
</body>
</html>
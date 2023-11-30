<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<title>Insert title here</title>

<%@ include file="/include/header.jsp"%>

<section class="page-section">
	<div class="container">
	<h1>JSTL 연습</h1>
	<p>JSP 개발을 좀 더 편하고 단순화 하기 위한 태그 libarary(JSP Standard Tag Library)</p>
	<p>Spring Boot(HTML) 타임리프 , "Spring Legacy" , (JSP) JSTL </p>
	<h3>CORE (jstl/core) </h3>
	<p>디렉티브 태그를 이용하여 사용할 태그를 prefix(식별자 , 구분자)를 주고 선언 ( c , fmt , fn)</p>
	<c:set var="num1" value="100"/>
	<p>EL문법 => ${num1} </p>
	<c:set var="num2" value="200"/>
	<p>num1과 num2의 합 : ${num1+num2} // HTML : ${num1} + ${num2}</p>
	
	<c:if test="${num1 == 100}">
		<p>num1은 100입니다 </p>
	</c:if>
	<c:choose>
		<c:when test="${num1==101}">
			<p>num1은 101입니다
		</c:when>
		<c:otherwise>
			<p>num1은 101이 아닙니다?</p>
		</c:otherwise>
	</c:choose>
	<c:forEach var="i" begin="2" end="9">
		<c:forEach var="j" begin="1" end="9" >
			<p>${i*j}</p>
		</c:forEach>	
	</c:forEach>
	
	<h1>포맷 태그</h1>
	<p>데이터의 형태를 바꿈 ( 통화표시, 날짜 등등) 오류가 많이남.</p>
	<c:set var="date" value="<%=new Date() %>"/>
	<p>오늘의 날짜 FMT태그로 표현 : <fmt:formatDate value="${date}" type="date"/>
	<p>오늘의 날짜 FMT태그로 표현 : <fmt:formatDate value="${date}" type="time"/>
	
	
	<h1>펑션</h1>
	<c:set var="str" value="         HELLO JSP SERVLET          "/>
	<p>EL 출력 : ${str}</p>
	<P>대문자로 바꾸기 : ${fn:toUpperCase(str)}</P>
	<P>소문자로 바꾸기 : ${fn:toLowerCase(str)}</P>
	<p>문자열의 길이 : ${fn:length(str)}</p>
	<p>문자열의 공백 : ${fn:trim(str)}</p>
	</div>
</section>

<%@ include file="/include/footer.jsp"%>
</html>
﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Java Expression 연습 11 : jstl 조건식, choose</title>

</head>

<body>
	<!-- c:choose 
		여러 상황 중 한 가지 선택
		c:when, c:otherwise 서브태그
	-->
	<c:choose>
		<c:when test="${ param.color == 1 }">
			<span style="color: red">빨강</span>
		</c:when>
		<c:when test="${ param.color == 2 }">
			<span style="color: green">녹색</span>
		</c:when>
		<c:when test="${ param.color == 3 }">
			<span style="color: blue">파랑</span>
		</c:when>
		<c:otherwise>
			<span style="color: black">검정</span>
		</c:otherwise>
	</c:choose>
</body>
</html>
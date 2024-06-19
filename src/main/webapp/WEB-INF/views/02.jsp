<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Java Expression 연습 02 : 연산</title>
</head>
<body>
	<h1>연산</h1>

	<!-- 데이터 타입별 산술 연산 -->
	<p> iVal + 10 * 100 / 2 = ${ iVal + 10 * 100 / 2 } </p>
	<p> fVal + 10 * 100 / 2 = ${ fVal + 10 * 100 / 2 } </p>
	
	<!-- 비교 연산 -->
	<p> iVal < 100 = ${ iVal < 100 } </p>
	
	<!-- 논리 연산 -->
	<p> iVal == 1000 || fVal < 200 = 
		${ iVal == 1000 || fVal < 200 } </p>
	
	<!-- 객체의 null 비교 -->
	<p> reqVal이 null 인가? = ${ empty reqVal } </p>
	<p> userVo가 null 아닌가? = ${ not empty userVo } </p>
	
	

</body>
</html>
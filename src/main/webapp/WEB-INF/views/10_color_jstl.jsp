<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Java Expression 연습 10 : jstl 조건식</title>



</head>
<body>
	<!-- 기본적인 조건 분기문 
		c:if -> 조건식, EL을 이용하여 테스트 해보자
	-->
	
	<%--
	if( "1".equals( request.getParameter("color") ) ) {	
	--%>
	<c:if test="${param.color == 1 }">
		<span style="color: red">빨강</span>
	</c:if>
	<%--
	} else if( "2".equals( request.getParameter("color") ) ) {	
	--%>
	<c:if test="${param.color == 2 }">
		<span style="color: green">녹색</span>
	</c:if>	
	<%--
	} else if( "3".equals( request.getParameter("color") ) ) {	
	--%>
	<c:if test="${param.color == 3 }">
		<span style="color: blue">파랑</span>
	</c:if>

	<%--
	}
	--%>


</body>
</html>
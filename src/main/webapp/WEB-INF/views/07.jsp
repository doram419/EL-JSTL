﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("name","page name");
	request.setAttribute("name", "request name");
	session.setAttribute("name", "session name");
	application.setAttribute("name", "application name");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Java Expression 연습 07 : 범주우선순위</title>
</head>
<body>
	<h1>범주우선순위</h1>
	
	<h2>자바문법</h2>
	page name = <%=pageContext.getAttribute("name") %> <br/>
    request name = <%=request.getAttribute("name") %> <br/>
    session name = <%=session.getAttribute("name") %> <br/>
    application name = <%=application.getAttribute("name") %> <br/>
	
	<h2>el</h2>                   
	<h3>특정 스코프 속성에 접근</h3>
	<ul>
		<li>PageScope.name = ${ pageScope.name }</li>
		<li>RequestScope.name = ${ requestScope.name }</li>
		<li>SessionScope.name = ${ sessionScope.name }</li>
		<li>ApplicationScope.name = ${ applicationScope.name }</li>
		<li>name bean = ${ name }</li>
	</ul>


	<br/>
	
</body>
</html>
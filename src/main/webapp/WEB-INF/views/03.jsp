﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Java Expression 연습 03 : EL을 통해서 파라미터 가져오기</title>
</head>
<body>
	<h1>파라미터</h1>
	
	<!-- localhost:8088/eljstl/03?id=you&pw=1111&name=재석&num1=100&num2=200 -->	
	
	<h2>자바문법 parameter값 꺼내쓰기</h2>	
	<% 
	String id= request.getParameter("id");
	// $ { id }
	String pw= request.getParameter("pw");
	String name= request.getParameter("name");
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	%>
		
		
	id = <%=id %> <br/>
    pw = <%=pw %> <br/>
    name = <%=name %> <br/>
	<%=num1 + num2 %> <br/><br/><br/>
		
		
	<h2>el parameter값 꺼내쓰기</h2>
	<p> id = ${ param.id }</p>
	<p> pw = ${ param.pw }</p>
	<p> name = ${ param.name }</p>
	<p>num1 + num2 = ${ param.num1 + param.num2 }</p>

	<br/>	
		
		
</body>
</html>
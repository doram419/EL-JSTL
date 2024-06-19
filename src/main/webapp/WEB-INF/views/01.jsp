<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데이터형</title>
</head>
<body>
	<h1>데이터형</h1>
	<div id="content">
		<h3>JSP 방식</h3>
		<%
			int iVal = (int)(request.getAttribute("iVal"));
			Object nullVal = request.getAttribute("nullVal");
		%>
	
		<ul>
			<li>iVal : <%= iVal %></li>
			<li>nullVal : <%= nullVal %></li>
		</ul>
		<!-- servlet에서 넘어온 값들을 표현할때 사용한다. java보다 간결하다 -->
		<!-- EL의 경우 명시적인 getAttribute 작업이 필요없다 -->
		<h3>EL</h3>
		<ul>
			<li>dVal : ${ fVal }</li>
			<li>bVal : ${ bVal }</li>
			<li>sVal : ${ sVal }</li>
			<li>nullVal : ${ nullVal }</li>
			
			<li>userVo : ${userVo }</li>
			<li>객체 속성 접근 : ${userVo.email }</li>
		</ul>
	</div>
	
</body>
</html>
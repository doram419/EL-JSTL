<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="vo.UserVo" %>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%-- 
	List<UserVo> userList = (List<UserVo>)request.getAttribute("userList");
--%>

<!DOCTYPE>

<html lang="ko">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Java Expression 연습 11 : jstl 반복문</title>
	<style>
		#table_head{
			background-color: LightGray;
		}
	</style>
</head>

<body>
	<h1>사용자 리스트</h1>
	<h3>JSTL 구현</h3>
	
	<table class="jstl_table" border=1>
		<tr id="table_head">
			<td>no</td>
			<td>name</td>
			<td>email</td>
			<td>status.index</td>
			<td>status.count</td>
		</tr>
		<!-- 컬렉션 객체 순회 
			c:forEach
			- items : 순회할 컬렉션 객체
			- var : 추출된 요소의 임시 이름
			- varStatus : 추출된 항목의 상태
		-->
		<c:forEach items="${ userList }" var="user" varStatus="status">
		<tr>
			<td>${ user.no }</td>
			<td>${ user.name } </td>
			<td>${ user.email }</td>
			<td>${ status.index }</td>
			<td>${ status.count }</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- 파라미터 r 체크
	- 비어있으면 기본값 3 설정
	- 비어있지 않으면 r 파라미터를 행수로 지정
-->
<c:choose>
	<c:when test="${empty param.r }">
		<c:set var="nRow" value="3"/>		
	</c:when>
	<c:otherwise>
		<c:set var="nRow" value="${ param.r }"/>	
	</c:otherwise>
</c:choose>
<!-- 파라미터 c 체크
	- 비어있으면 기본값 3 설정
	- 비어있지 않으면 c 파라미터를 열수로 지정
-->
<c:choose>
	<c:when test="${empty param.c }">
		<c:set var="nCol" value="3"/>		
	</c:when>
	<c:otherwise>
		<c:set var="nCol" value="${ param.c }"/>	
	</c:otherwise>
</c:choose>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="ko">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>JSTL 반복문</title>
</head>

<body>
	<div class="content">
		<h3> JSTL 코드</h3>
		<table border='1px' cellspacing='0' cellpadding='10px'>
			<c:forEach begin="0" end="${ nRow }" var="row" step="1">
				<tr>
					<c:forEach begin="0" end="${ nCol }" var="col" step="1">
						<td>cell(${ row }, ${ col })</td>
				
					</c:forEach>
				</tr>
			</c:forEach>
			

		</table>
	</div>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<%-- JSTL --%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록폼</title>
<style>
	td{
		border : 2px solid
	}
</style>
</head>
<body>

	${memberList}

	<table style="width:50%">
		<!--  title 입니다 -->
		<tr>
			<td>번호</td>
			<td>회원번호</td>
			<td>이름</td>
			<td>이메일</td>
			<td>비밀번호</td>
			<td>A</td>
		</tr>
		
		<!--  내용 입니다 -->
		<tr>
			<td>10</td>
			<td>13</td>
			<td>뇨럐</td>
			<td>nyorae@gmail.com</td>
			<td>1**5</td>
			<td>[삭제]</td>
		</tr>
	</table>

</body>
</html>
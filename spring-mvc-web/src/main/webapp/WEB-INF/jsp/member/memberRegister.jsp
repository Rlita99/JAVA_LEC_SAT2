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
	
	<!--  등록 폼 입니다. -->
	<form id="frmRegist" name="frmRegist" method="post" action="/member/memberRegister.do" method="post">
		<p> NAME : <input type="text" id="userName" name="userName" value="" /> </p>
		<p> EMAIL : <input type="text" id="userEmail" name="userEmail" value="" /> </p>
		<p> PASSWORD : <input type="password" id="userPwd" name="userPwd" value="" /> </p>
		<p> <button> 저장해줘 </button> </p>
	
	</form>
	<br/>

	<h1> 등록된 회원 목록 </h1>

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
		
		<c:forEach var="member" items="${memberList}" varStatus="status">
		<tr>
			<td>${memberList.size() - status.index}</td>
			<td>${member.userNo}</td>
			<td>${member.userName}</td>
			<td>${member.userEmail}</td>
			<td>${member.userPwd}</td>
			<td>[삭제]</td>
		</tr>
		</c:forEach>
	</table>

</body>
</html>
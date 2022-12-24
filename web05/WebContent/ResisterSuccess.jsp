<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 
	회원가입 완료 후, 동작하는(들어오는) 페이지로, 가입된 회원의 목록을 보여줌.
 -->
 <%@page import="vo.WebUser, java.util.List" %>
 <jsp:useBean id="uc" class="controller.UserController"> </jsp:useBean>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table, tr, td {
	border:1px sold black;
	}
</style>
</head>
<body>
	<h1> Now You're One of Us. </h1>
	<h1> 환영합니다!! </h1>
	<table width="100%;">
		<!-- 헤더 -->
		<tr>
			<td>번호</td>
			<td>아이디</td>
			<td>이름</td>
			<td>전화번호</td>
			<td>이메일</td>
		</tr>
		<!-- 컨텐츠 -->
		<%
			// 메모리에서 Repository 참조 값을 불러오세요.
			List<WebUser> userList = uc.getUserListAll();
		
			// 향상된 for문말고 일반 for문을 사용하여 얼마나 불편한가 체험해보자...
			for(int i = 0; i < userList.size(); i++) {
				WebUser tmpUser = userList.get(i);
		%>
		<tr>
			<td><%=++i%></td>
			<td><%=tmpUser.getWeb_id()%></td>
			<td><%=tmpUser.getWeb_name()%></td>
			<td><%=tmpUser.getWeb_cel()%></td>
			<td><%=tmpUser.getWeb_email()%></td>
			<td><%=tmpUser.getWeb_introduce()%></td>
		</tr>
		<%
			}
		%>
		
	</table>


</body>
</html>
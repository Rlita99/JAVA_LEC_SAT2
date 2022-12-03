<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="vo.MemberVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

사용자 정의 클래스를 사용하는 방법 1 : import (%@ page import="vo.MemberVO") <br />
<%
	MemberVO vo = new MemberVO();
	vo.setId("norae");
	vo.setName("뇨럐");

%>

ID : <%=vo.getId() %> <br />
Name : <%= vo.getName() %>


</body>
</html>
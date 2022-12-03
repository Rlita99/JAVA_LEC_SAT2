<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!
	// 선언문
	// dIncludeFirst_jsp.java 클래스의 멤버(변수/메소드)로 선언된다.
	String name = "뇨럐";
 %>
	

<%--  
	Directive include의 경우는
	1. 파일 붙이기 -> 2. java로 변환 -> 3. 컴파일 -> 4. 실행
	이기 떄문에 host(붙이는 놈)에 정의된 변수/메소드를 guest(붙임 당하는 놈) 공유할 수 있다.
	<%@ include file="dIncludeSecond.jsp" %>	// 에러가 아닙니다. 
	
--%>


<%--

	Action 태그 방식의 경우는
	(호스트) 1. java로 변환 -> 2. 컴파일 -> 3. 실행
	(게스트) 1. 게스트 java 변환 -> 5. 게스트 실행 6. 호스트/게스트 합치기
	이 경우는 host의 변수/메서드 등 공유 자원을 사용하지 못하고 독립적으로 동작함.
	<jsp:include page="dIncludeSecond.jsp" />  // 에러에요 

 --%>
 
 <jsp:include page="dIncludeSecond.jsp"> 
 	<jsp:param name="userName" value="<%=java.net.URLEncoder.encode(name) %>" />
 	<jsp:param name="callingDate" value="<%=new java.util.Date() %>" />
 </jsp:include>


</body>
</html>
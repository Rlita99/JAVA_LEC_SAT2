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
// 클래스의 멤버를 정의합니다. (Class 전역 변수 / /메소드 등을 선언)
%>

<%

// 스크립틀릿
// _jspService() 메소드 내의 지역변수/로직등을 선언하는 부분입니다.

	for (int i = 0; i < 10; i++) {
		// 자바코드에 HTML 코드 넣기
		//out.println("<strong>i=" + i + "</strong></br>");

	// HTML에 자바코드 넣기	
%>
		<strong>i = <%=i %></strong><br>
<%
	
	}
	
	String greeting = "Hello World";
	
	out.println(greeting.toLowerCase());
	
	out.print(selfToLowerCase(greeting));%>	<br><br>
<%	out.print(selfToUpperCase(greeting));%> <br><br>

	// 스크립틀릿은 클래스의 멤버베서드 한군데(_jspService())에서 동작하는 코드를 기술하는 곳이므로,
	// 추가적인 메서드의 정의는 불가능 --> 에러에러


<%!
	// 선언문으로 jsp class에 메서드를 생성
	
	String selfToLowerCase(String str) {
		return str.toLowerCase();
	}

	String selfToUpperCase(String str) {
		return str.toUpperCase();
	}

%>

</body>
</html>
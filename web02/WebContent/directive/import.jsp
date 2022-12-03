<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.util.*" %>
<%

	// java.lang은 기본 패키지기 때문에 import가 필요 없다.
	String name = "뇨럐";
	Integer age = new Integer(10);
	
	// Data 객체를 써본다.
	Date now = new Date();

%>


현재 날짜 / 시간 : <%=now %>


</body>
</html>
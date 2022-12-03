<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
	String name = request.getParameter("userName");
	name = java.net.URLDecoder.decode(name);
	String date = request.getParameter("callingDate");
%>


<%-- dIncludeSecond.jsp 파일 하나만 보면 오류가 나지만 
     dIncludeFirst.jsp에 directive 방식으로 include 된다면 얘기가 달라집니다. 
--%>
	<%=name %> <br />
	<%=date %>

</body>
</html>
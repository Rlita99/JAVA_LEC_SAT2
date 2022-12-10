<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	
	Enumeration<String> names = request.getParameterNames();
	while(names.hasMoreElements()) {
		String name = names.nextElement();	// 파라미터에서 name 가져오기
		String value = request.getParameter(name);	// 파라미터에서 값 가져오기
		// http://localhost:9999/request03_ParameterNames.jsp?a=1&b=2&3=c 값을 입력
		out.print(name + " = " + value + "<br />");
	}
	%>
</body>
</html>
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
	String[] name = request.getParameterValues("name");
	
	// http://localhost:9999/request04_ParamValues.jsp?name=nyorae&name=nyorae2&name=nyorae3처럼 name 변수가 3개 중복되면 배열 형태로 받습니다.
	if(name==null) {
		out.print("오류났쥬?");
	} else {
		for(String value : name) {
			out.print("value=" +  value + "<br />");
		}
		
	}
	
	%>
	
	<!--  공백과 null의 차이점 -->
	

</body>
</html>
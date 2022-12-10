<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 
URL에 ?를 이용하여 바로 파라미터를 전달할 수 있습니다. 구분은 & 으로 합니다.
http://localhost:9999/request01.jsp?name=%EB%87%A8%EB%9F%90&id=nyorae
혹은 form 양식을 이용합니다.
 -->

<%
	String name_request01 = request.getParameter("name");
	String id_request01 = request.getParameter("id");

	// id나 name 값 둘중 하나에 값이 들어오지 않는다면?
	// 1. 삼항연산자 : 변수 자체의 값을 "" 이거나 id로 치환(무조건 String 객체회)
	// id = id == null ? "" : id;

	
	if(id_request01 == null || !id_request01.equals("nyorae")){
		out.print("접근이 금지되었습니다. </br></br>");
	} else {		//아이디가 nyorae일 때만 환영메세지 출력
		out.print("<h1>" + name_request01 + "님 환영합니다. </h1> </br>");
		} 
%>
	
	NAME : <%=name_request01 %>  <br/>
	ID :   <% out.print(id_request01); %>

<!--  *** 복습 ***
	거짓 && 참 : A항이 거짓이니까 B항은 체크하지 않습니다.
	거짓 & 참 : A항이 거짓이라도 B항은 체크한다.
	그래서 id 값이 아예 없을 때 
	if(id != null & id_request01.equals("nyorae")) 이면 오류가 납니다. id_request01 값을 nyorae와 비교해야하는데 id_request값 자체가 없습니다.
 	. (<< 참조 연산자. 참조할 reference가 필요합니다)
 -->


</body>
</html>
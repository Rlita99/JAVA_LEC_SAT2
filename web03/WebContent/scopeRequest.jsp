<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean 
	id="creationObjectVO" 
	class="vo.CreationObjectVO"
	scope="request"	
	>
</jsp:useBean>
request1 : <%=creationObjectVO.getCreationDate() %> <br/>
<%@include file="scopeRequest2.jsp" %>

</body>
</html>
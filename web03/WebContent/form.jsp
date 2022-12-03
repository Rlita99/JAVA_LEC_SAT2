<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- //form 태그
							 method 값을 적지 않으면 기본 get 방식으로 전송됩니다. get 방식은 URL에 노출이 되고 담을 수 있는 양이 적습니다.	
							 post방식은 URL에 form field값이 노출되지 않습니다(보안). 담을 수 있는 양이 get보다 큽니다.
--%>
<form action="getMethod.jsp" method="post">

<%-- form filed가 오는 공간입니다. --%>
ID : <input type="text" name="id" value="" />
NAME : <input type="text" name="name" value="" />

<button> 서버로 전송 </button>

</form>



</body>
</html>
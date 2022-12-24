<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 창</title>
</head>
<body>

<!--form method="post" action="procLogin.jsp">  -->
	<form method="post" action="procPreparedStmtLogin.jsp">
	<p> <input type="text" id="user_name" name="user_name" value=""/> </p>
	<p> <input type="password" id="user_pwd" name="user_pwd" value=""/> </p>
	<p> <button> 로그인 </button> </p>

</form>

</body>
</html>
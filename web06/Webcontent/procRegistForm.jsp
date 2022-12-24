<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 스크립트 : 클라이언트에서 동작
	    자바 : 서버에서 동작
	 서버에서 먼저 실행되기 때문에 스크립트는 위치에 상관없이 java 코드가 실행된 후 실행됩니다.
 -->
<script>
	alert('회원가입을 환영합니다!');
	location.href='registForm.jsp';
</script>

<%
	
	// 1. Class.forName() 드라이버 로딩
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection(
			"jdbc:mysql://nyorae.shop:3306/web06_db?user=web06&password=12345"
	);

	// 3. SQL문 조합
	String user_id = request.getParameter("user_id");
	String user_pwd = request.getParameter("user_pwd");
	String sql_format = "INSERT INTO web06_user (user_name, user_pwd) VALUES ('%s', '%s')";
	String sql = String.format(sql_format, user_id, user_pwd);

	// 4. 쿼리 실행
	Statement stmt = conn.createStatement();
	int affected_rows = stmt.executeUpdate(sql);
	stmt.close();

%>


</body>
</html>
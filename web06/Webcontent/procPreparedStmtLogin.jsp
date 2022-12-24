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

<%
	
	// 1. Class.forName() 드라이버 로딩
	Class.forName("com.mysql.cj.jdbc.Driver");

	// 2. DB 연결
	Connection conn = DriverManager.getConnection(
			"jdbc:mysql://nyorae.shop:3306/web06_db?user=web06&password=12345"
	);

	// 3. SQL문 조합
	String user_name = request.getParameter("user_name");
	String user_pwd = request.getParameter("user_pwd");
	
	String sql = "SELECT * FROM web06_user WHERE user_name=?";

	// 4. Prepared Statment 작업
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, user_name);
	ResultSet rows = pstmt.executeQuery();
	
	if(rows.next()) {	// row가 하나라도 있을 때
		
		do {
	
			String db_pwd = rows.getString("user_pwd");
			if(db_pwd.equals(user_pwd)) { // 비밀번호가 일치할 때
%>				<script type="text/javascript">
				alert("로그인 하였습니다!");
				location.href="daum.net";
				</script>
<%			
			} else {	// 비밀번호가 틀릴 때
%>
				<script type="text/javascript">
				alert("비밀번호가 틀립니다.");
				history.back();
				</script>
<%				
				break;
			}
			
		} while(rows.next());
		
	} else {	// row가 없을 경우
%>
		<script type="text/javascript">
			alert("'<%=user_name%>' 이라는 회원은 없습니다.");
			history.back();
		</script>
<%
	}

	pstmt.close();
%>


</body>
</html>
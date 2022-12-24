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
	// 1. mysql Driver loading
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = null;
	
	// 2. connect
	try {
		
		out.println("1. 연결 시도 </br>");
		conn = DriverManager.getConnection(
				"jdbc:mysql://nyorae.shop:3306/web06_db?user=web06&password=12345");	// Connection String

				
		out.println("2. 로직 실행 </br>");
				
		Statement stmt = conn.createStatement();
		String sql = "select * from web06_user";
		
		// 쿼리 결과를 엑셀 형식으로 메모리에 로딩
		// select 해보기(excute Query)
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			out.println(rs.getString(1) + " ");	// 인덱스로 가져오기
			out.println(rs.getString("user_name") + " ");	// 컬럼명으로 가져오기
			out.println(rs.getString(3) + " ");
			out.println(rs.getString("insert_date") + " ");
			out.println("</br>----------------------------------</br>");
		}
		
		// 수정해보기(Update Query)
		sql = "update web06_user set user_name = 'angel' where user_no=2";
		int affected_rows = stmt.executeUpdate(sql);
			out.println("<br/> update에 영향을 받은 row 수 : " + affected_rows + "<br/>");
		
		// 데이터 넣어보기
		sql = "insert into web06_user (user_no,user_name,user_pwd)" + 
			  "values (4, '뇨럐', '12345')";
		affected_rows = stmt.executeUpdate(sql);
		out.println("<br/> insert 된 row 수 : " + affected_rows + "<br/>");	
		
		// 삭제 해보기
		sql = "delete from web06_user where user_name='angel'";
		affected_rows = stmt.executeUpdate(sql);
		out.println("<br/> delte 된 row 수 : " + affected_rows + "<br/>");
		
		stmt.close();
				
	} catch (Exception ex) {
		
		out.println("---------------------예외 발생!---------------------");
		out.println(ex.getMessage());
		out.println(ex.getStackTrace());
		
	} finally {
		
		out.println("3.연결 해제</br>");
		if(conn != null) conn.close();
	}

%>

</body>
</html>
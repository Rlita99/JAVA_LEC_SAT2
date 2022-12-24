package jdbcexam;

import java.sql.*;

public class JDBCConnect {

	public Connection getConnection() throws Exception {
		
		
		// Webcontent/WEB-INF/lib 아래 mysql-connector~ 를 복사해중야합니다.
		Class.forName("com.mysql.cj.jdbc.Driver");
		//Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(
				"jdbc:mysql://nyorae.shop:3306/mysql?user=root&password=system" // connection string
				);
				// jdbc:mysql://데이터베이스주소:포트/접근할데이터베이스명?user=아이디&password=비밀번호
				// jdbc:oracle
				// jdbc:mssql ... 
		
		
		return conn;
		
		
	}
	
}

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
	
	// 로그인 처리하는 곳 user_id, user_pwd를 받는다.
	
	String user_id = request.getParameter("user_id");
	String user_pwd = request.getParameter("user_pwd");
	
	// 사용자가 입력한 id, pwd 값에서 앞, 뒤 공백 제거(중간 공백은 정규 표현식 사용)
	user_id = user_id.trim();
	user_pwd = user_pwd.trim();
		
	// 3항 연산자 사용으로 id, pwd 값이 입력되지 않을 경우(null) 예외처리
	user_id = user_id == null ? "" : user_id;
	user_pwd = user_pwd == null ? "" : user_pwd;
	
	// 사용자가 두 값을 모두 넣었는지 확인
	if (user_id.equals("") || user_pwd.equals("") ) {
	%>
	
	<h3> 아이디와 비밀번호는 필수 값 입니다.</h3><br/>
	<a href="Redirect_LoginForm.jsp">로그인 화면으로 돌아가기</a>
	<%
		return;	// 모양상 메소드는 아니지만 java 파일로 변환 되었을 때 _jspService 안에 메소드로 들어감으로 return을 사용 할 수 있습니다.
				// D:\java-web-lecture\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp4\work\Catalina\localhost\ROOT\org\apache\jsp\
	}
	
	if (user_id.equals("nyorae") && user_pwd.equals("1234")) {
		response.sendRedirect("Redirect_LoginSuccess.jsp");
	} else {
		response.sendRedirect("Redirect_LoginFail.jsp");
	}
	
	%>


</body>
</html>
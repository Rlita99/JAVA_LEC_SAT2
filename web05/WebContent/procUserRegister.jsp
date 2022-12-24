<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vo.WebUser, java.util.List" %>
<jsp:useBean id="userController" class="controller.UserController" scope="page" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 받는 부분</title>
</head>
<body>

<%
	
	request.setCharacterEncoding("UTF-8");
	String web_id = request.getParameter("web_id");
	String web_pwd = request.getParameter("web_pwd");
	String web_name = request.getParameter("web_name");
	String web_cel1 = request.getParameter("web_cel1");
	String web_cel2 = request.getParameter("web_cel2");
	String web_cel3 = request.getParameter("web_cel3");
	String web_email1 = request.getParameter("web_email1");
	String web_email2 = request.getParameter("web_email2");
	String web_introduce = request.getParameter("web_introduce");
	
	// 1. WebUser 객체에 회원 데이터를 저장
	WebUser user = new WebUser();
	user.setWeb_id(web_id);
	user.setWeb_pwd(web_pwd);
	user.setWeb_name(web_name);
	user.setWeb_introduce(web_introduce);
	
	String web_cel = web_cel1 + "-" + web_cel2 + "-" + web_cel3;
	String web_email = web_email1 + "@" + web_email2;
	
	user.setWeb_cel(web_cel);
	user.setWeb_email(web_email);
	
	// 2. 메모리에 회원 데이터 저장
	userController.addUser(user);
%>
	<p>아이디 : <%=user.getWeb_id()%> </p>
	<p>비밀번호 : <%=user.getWeb_pwd()%> </p>
	<p>이름 : <%=user.getWeb_name()%> </p>
	<p>전화번호 : <%=user.getWeb_cel()%> </p>
	<p>이메일 : <%=user.getWeb_email()%> </p>
	<p>자기소개 : <%=user.getWeb_introduce()%> </p>
	
<%	
	// 3. 회원가입 완료 후 회원 목록 표시로 이동
	response.sendRedirect("ResisterSuccess.jsp");
%>	
	
	
	<h1> 이 웹사이트의 회원 목록 </h1>
	<%
	List<WebUser> resultList = userController.getUserListAll();
	int number = 1;
	// for(int i=0; i< resultList.size(); i++) { ((webUser)resultList.get(i)).getWebName()}
	for(WebUser dbUser : resultList) {
	%>
	<p> <%=number++ %> | <%= dbUser.getWeb_name() %> (<%=dbUser.getWeb_id() %>) </p>
	<% 
	}
	%>
	
	
</body>
</html>
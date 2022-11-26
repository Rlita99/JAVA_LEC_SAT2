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

// 스크립틀릿
// 자바 주석문 
/* 자바 여러줄
주석 
가능 */

 String name = "뇨럐";
 System.out.println(name + "를 호출하였습니다.");
 out.println(name + "를 호출하였습니다.(웹)");
 
 out.println(age + "살입니다.");
  
%>

<%!
// jsp 선언문
 String age = "10";
%>

<br/><br/>
<%= age %> 살입니다.

</body>
</html>
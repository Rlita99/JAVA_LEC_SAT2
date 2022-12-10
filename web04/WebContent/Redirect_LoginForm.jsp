<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 아이디 / 패스워드 입력 폼. 사용자의 입력을 받는다. -->
<form action="Redirect_ProcLogin.jsp">
	<p> 아이디 : <input type="text" name="user_id" value="" /> </p> 
	<p> 비밀번호 : <input type="password" name="user_pwd" value="" /> </p> 
	<p> <button> 로그인 </button> </p>
</form>


<!-- 스크립트 연습하기 -->
<script type="text/javascript">

	// 1. 변수 선언하기
	var name; // 혹은 let
	
	// 2. 변수 할당
	name = "nyorae";
	
	// 3. 브라우저 alert 창 띄우기
	alert('name 값은' + name + "입니다.");
	
	//alert(`name 값은 $\{name} 입니다.`);
	
	// 4. 메서드(함수) 만들기
	// java : Public 리턴타입 메서드명 (파라미터) {}
	// java script : function vs. pointer
	
	
	//function으로 선언하기
	
	// functioin 선언시 위치 상관없이 호출됩니다.
	console.log('x + y = ' , add(1,2));	// 오류가 아닙니다.
	
	function add(x, y) { return x + y;}
	
	console.log('x + y = ' , add(1,2));

	
	// 함수 pointer 방식(변수 만들어서 함수에 씌우기)
	
	//console.log('x / y =' , divide(6, 2))	// 오류 입니다.
		
	var divide = function(x, y) { return x / y; }
	
	console.log('x / y =' , divide(6, 2));
	
	// let func = (x, y) => x + y;	// 람다식 입니다. 아래와 같습니다.
	// let func = function(x, y) { return x + y; }
	// alert(func(10,11));
	
	
</script>


</body>
</html>
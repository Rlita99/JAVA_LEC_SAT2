<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 폼</title>
</head>
<body>
<!-- 
	아이디 input type="text"
	패스워드 input type="password"
	이름 input type="text"
	전화번호 select - text - text
	이메일주소 text @ select
	자기소개 textarea
 -->
 
<h2> 회원가입 </h2>
<!--  POST 방식은 URL에 파라미터 값이 노출되지 않는다. 디폴트:"GET" -->
<form name="regForm" method="POST" action="procUserRegister.jsp" onsubmit="return sendDataCheckForSubmit();">

	<p>* 아이디 : <input type="text" name="web_id" value="" /> </p>
	<p>* 패스워드 : <input type="password" name="web_pwd" value="" /></p>
	<p>* 이름 : <input type="text" name="web_name" value="" /> <p>
	<p> 전화번호 :
		<select name="web_cel1">
			<option value="010">010</option>
			<option value="011">011</option>
			<option value="017">017</option>
			<option value="018">018</option>
		</select>
		-
		<input type="text" name="web_cel2" value="" />
		-
		<input type="text" name="web_cel3" value="" />
	</p>
	<p> * 이메일 : 
			<input type="text" name="web_email1" value="" />  
			@
			<select name="web_email2">
				<option value="naver.com">naver.com</option>
				<option value="kakao.com">kakao.com</option>
				<option value="-1">직접입력</option>
			</select>
	</p>
	<p>
		 자기소개 <br/> <textarea name="web_introduce"></textarea>
	</p>
	
	<p>
		<!-- HTML4 방식 -->
		<!--  버튼 vs. 서브밋
			버튼 : 서버에 보내지 않고 처리하고 싶을 때
			서브밋 : 서버에 form 전송
		 -->
		<!-- input type="button" value="버튼" /> 
		<input type="submit" value="서브밋" /> 
		<!--
			이미지는 서브밋과 동일한 결과이지만 예쁜 image를 넣을 수 있음 
		<input type="image" src="/images.jfif" style="width:60px;height:60px;" /> -->
	<p>
	
		<!-- HTML5  -->
		<button>회원 가입</button>	<!--  input type = submit과 동일 -->
		<button type="button" onclick="sendDataButton();">회원가입 button</button> <!--  input type = button 과 동일 -->
</form>

<script type="text/javascript">
	// 자바 스크립트
	//console.log(document.getElementsByName("regForm"));
	//console.log(document.regForm);
	//alert(document.regForm.web_id.value);
	
	// -- input type="submit", button을 사용할 때 동작
	function sendDataCheckForSubmit() {
		// 아이디, 패스워드, 이름, 이메일은 반드시 받아야 할 때
		if(document.regForm.web_id.value.trim() == "") {
			alert("아이디는 필수값입니다!");
			document.regForm.web_id.focus();
			return false;
		} 
		if(document.regForm.web_pwd.value.trim() == "") {
			alert("비밀번호는 필수값입니다!");
			document.regForm.web_pwd.focus();
			return false;
		}
		
		// 비밀번호 길이 체크
		if(document.regForm.web_pwd.value.trim().length < 5) {
			alert("비밀번호는 다섯자 이상이어야 합니다.");
			document.regForm.web_pwd.focus();
			return false;
		}
		if(document.regForm.web_name.value.trim() == "") {
			alert("이름은 필수값입니다!");
			document.regForm.web_name.focus();
			return false;
		} 
		if(document.regForm.web_email1.value.trim() == "") {
			alert("이메일은 필수값입니다!");
			document.regForm.web_email1.focus();
			return false;
		} 
		
		else return true;
	}
	
	
	function sendDataButton() {
		//document.regForm.submit();
		if(sendDataCheckForSubmit()) {
			document.regForm.submit();
		}
	}
</script>


</body>
</html>
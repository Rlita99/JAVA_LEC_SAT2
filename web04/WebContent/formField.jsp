<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="request03_ParamNames.jsp">

	<h2> Input </h2>
	<p> 1. text 타입 : <input type="text" name="f1" value="" /> </p>
	<p> 2. password 타입 : <input type="password" name="f2" value="" /> </p>
	<p> 3. file 타입 : <input type="file" name="" value="" /> </p>
	<p> 4. radio 타입 : 
						<input type="radio" name="radio" value="A" />A 
						<input type="radio" name="radio" value="B" />B	</p>
	<p> 5. checkbox : 
						<input type="checkbox" name="checkBoxA" value="A" /> A
						<input type="checkbox" name="checkBoxB" value="B" /> B	</p>
	<p> 6. number / date (html5) : 
						<input type="number" name="num" value="" />
						<input type="date" name="dt" value="" />		</p>
	<p> 7. hidden : <input type="hidden" name="hdnName" value="뇨럐" /> </p>
	
	
	<h2> Select </h2>
	<p> 8. select : 
		<select name="combo1">
			<option value=""> 선택하세요 </option>
			<option value="1"> 숫자1</option>
			<option value="2"> 숫자2</option>
		</select>	<p>
		
	<h2> Text Area </h2>
	<p> 9. textarea : <textarea name="txtArea"> 값 </textarea>	</p>
	
	<button> 보내줭 </button>
</form>


</body>
</html>
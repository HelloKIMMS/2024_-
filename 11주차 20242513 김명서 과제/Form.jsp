<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<title>레코드 추가</title>
</head>
<body>
	<h2>회원가입</h2>
	
	<h4>회원이 되어 다양한 혜택을 경험해 보세요!</h4>
	
	<form method="post" action="insertTestPro.jsp">
		아이디<br>
		<input type="text" name="id" maxlength="50" placeholder="아이디를 입력해주세요(6~12)"> <input type="submit" value="중복 확인"><br>
		비밀번호<br>
		<input type="password" name="passwd" maxlength="16" placeholder="비밀번호를 입력해주세요(6~12)"><br>
		비밀번호 확인<br>
		<input type="password" name="realpasswd" maxlength="16" placeholder="동일한 비밀번호를 재입력해주세요"><br>
		이름<br>
		<input type="text" name="name" maxlength="10" placeholder="이름을 입력해주세요"><br>
		전화번호<br>
		<input type="text" name="number" maxlength="13" placeholder="휴대폰 번호를 입력해주세요"><br>
		이메일<br>
		<input type="text" name="email" maxlength="50" placeholder="이메일 주소를 입력해주세요"><br>
		생년월일<br>
		<input type="text" name="birthdate" maxlength="20" placeholder="생년월일을 입력해주세요"> <br>
		<input type="submit" value="가입하기">
	</form>
</body>
</html>
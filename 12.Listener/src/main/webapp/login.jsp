<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login</title>
</head>
<body>
	<h1>Login</h1>
	<form action="<%= request.getContextPath() %>/login" method="post">
		<div>
			<label for="username">아이디</label>
			<input type="text" name="username" id="username" placeholder="아이디를 입력하세요.">
		</div>
		
		<div>
			<label for="password">비밀번호</label>
			<input type="password" name="password" id="password" placeholder="비밀번호를 입력하세요.">
		</div>
		<input type="submit" value="로그인">
	</form>
</body>
</html>
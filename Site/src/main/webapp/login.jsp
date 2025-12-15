<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String root = request.getContextPath();
    pageContext.setAttribute("root", root);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login</title>
</head>
<body>
	<h1>Login</h1>
	<form action="${ root }/login" method="post">
		<p>
			<label for="username">아이디</label>
			<input type="text" name="username" id="username" />
		</p>
		<p>
			<label for="password">비밀번호</label>
			<input type="password" name="password" id="password" />
		</p>
		<div>
			<input type="submit" value="로그인" />
		</div>
			<c:if test="${ param.error == 0 }">
		<p style="color: red;">아이디 또는 비밀번호가 일치하지 않습니다.</p>
	</c:if>
	</form>
</body>
</html>
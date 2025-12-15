<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JPS에서 forward방식으로 이동</title>
</head>
<body>
	<h1>JPS에서 forward방식으로 이동</h1>
	<jsp:forward page="B.jsp">
		<jsp:param value="김조은" name="name"/>
		<jsp:param value="20" name="age"/>
	</jsp:forward>
</body>
</html>
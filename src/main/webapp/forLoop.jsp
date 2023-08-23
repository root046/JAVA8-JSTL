<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>For Loop</title>
</head>
<body>
	<c:forEach var="i" begin="1" end="10">
		${i } <br/>
	</c:forEach>
	*******************<br/>
	<c:forEach var="i" begin="0" end="30" step="3">
		${i } <br/>
	</c:forEach>
	
</body>
</html>
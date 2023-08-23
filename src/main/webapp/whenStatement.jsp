<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>when statement</title>
</head>
<body>
	<c:choose>
		<c:when test="${param.dev == 'back' }"> Hi There Iam a Back-end Developer</c:when>
		<c:when test="${param.dev == 'front'}"> Hi There Iam a Front-end Developer</c:when>
		<c:when test="${param.dev == null }">Hi There Iam Not a Developer </c:when><!-- or you can use ${empty param.dev} for null parameters -->
		<!-- or you can use otherwise for null parameters -->
		<%-- <c:otherwise>Hi There Iam Not a Developer</c:otherwise> --%> 
	
	
	</c:choose>
</body>
</html>
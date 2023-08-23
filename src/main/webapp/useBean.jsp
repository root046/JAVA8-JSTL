<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean</title>
</head>
<body>
	<jsp:useBean id="user" class="org.test.beans.User" scope="page"></jsp:useBean>
	${user.getFirstName()}<br/>
	${user.lastName }<br/>
	*****************<br/>
	<%-- <c:out value="${user.firstName()}"/> --%>
	<c:out value="${user.lastName}"/>
</body>
</html>
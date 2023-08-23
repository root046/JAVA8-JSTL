<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Functions</title>
</head>
<body>
	<c:set var="elements" value="${fn:split('WWW.google.com','.') }"/>
	<c:forEach var="element" items="${elements}">
		${element}<br/>
	</c:forEach>
	<br/>
	Elements : ${fn:join(elements,'.') }
</body>
</html>
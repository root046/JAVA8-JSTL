<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head> 
		<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
		<title>Formatting Number</title>
	</head>
	
	<body>
		<c:set var="someNumber" value="654321.123456"/>
		<c:out value="${someNumber}"></c:out>
		<br/>
		<br/>
		Max integer digits:<fmt:formatNumber type="number" maxIntegerDigits="3" value="${someNumber}"/><br/>
		
		Max fraction digits:<fmt:formatNumber type="number" maxFractionDigits="3" value="${someNumber }"/><br/>
		
		Currency:<fmt:formatNumber value="${someNumber }" type="currency"/><br/>
		
		<fmt:setLocale value="ar_SA"/>
		Currency:<fmt:formatNumber value="${someNumber }" type="currency" />
		
	</body>
</html>
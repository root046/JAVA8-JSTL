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
	<%
	
		String URL ="www.bader.com";
	
	%>

	<c:forTokens items="<%=URL%>" delims="." var="temp">
	
		${temp }<br/>
	
	</c:forTokens>	

	
</body>
</html>
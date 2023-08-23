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
	String[] names = new String[3];
	names[0]="Bader ";
	names[1]="Sanad ";
	names[2]="Alanazi ";
	%>
	<c:forEach items="<%=names%>" var="name">
		${name} 
	</c:forEach>

	
</body>
</html>
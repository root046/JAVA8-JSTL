<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL TAGS</title>
</head>
<body>
	<c:set var="name" value="Bader"></c:set>
	<c:out value="${name}"></c:out><br/>
	${name}<br/>
	
	
	<c:remove var="name"/>
	<c:if test="${empty name}">
		<p>my name is: removed !<p/>
	</c:if>
	
	<c:if test="${not empty name}">
		<p>my name is:<c:out value="${name}"/><p/>
	</c:if>
	
	
	
	<br/>
	${param.msg}
	
	
	
	
	
	
	
	<br/>**********************
	<% String name = (String)("name");
	
		if(name==null){
			%>
			<p> the name is null!</p>
	<%	
		} else {
		%>	
		<p> the name is not null! </p>${name}
		<%
		}
	%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>XML Tag</title>
</head>
<body>
	<c:import url="/Users.xml" var="XMLfile"/>
	
	<x:parse xml="${XMLfile}" var="XMLdoc"/>
	
	Name:<x:out select="$XMLdoc/users/user/name"/><br/>
	Gender:<x:out select="$XMLdoc/users/user/gender"/><br/>
	Age:<x:out select="$XMLdoc/users/user/age"/><br/>
	
	*******************************<br/>
	<x:forEach select="$XMLdoc/users/user">
		Name:<x:out select="name"/><br/>
		Gender:<x:out select="gender"/><br/>
		Age:<x:out select="age"/><br/>
		<br/>
	</x:forEach>
	
	*******************************<br/>
	<table border=1>
		<x:forEach select="$XMLdoc/users/user">
			<tr>
				<x:if select="age > 22">
					<td><x:out select="name"/></td>
					<td><x:out select="gender"/></td>
					<td><x:out select="age"/></td>
				</x:if>
			</tr>
		</x:forEach>
	</table>
	
	*******************************<br/>
	Here The male users will be write in bold font.<br/> 
	<table border=1>
		<x:forEach select="$XMLdoc/users/user">
			<tr>
				<x:choose>
					<x:when select="gender='Male'">
						<td><i><b><x:out select="name"/></b></i></td>
						<td><i><b><x:out select="gender"/></b></i></td>
						<td><i><b><x:out select="age"/></b></i></td>						
					</x:when>		
				
					<x:otherwise>
						<td><x:out select="name"/></td>
						<td><x:out select="gender"/></td>
						<td><x:out select="age"/></td>
					</x:otherwise>
				</x:choose>
			</tr>
		</x:forEach>
	</table>
	
</body>
</html>
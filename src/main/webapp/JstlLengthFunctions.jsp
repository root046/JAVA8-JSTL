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
	
	<%
		String [] names = {"Bader","Sanad","Alanazi"};
	%>
	<c:set var="namesOfArray" value="<%=names %>"/>
	
	${fn:length(namesOfArray) }<br/>

	${fn:length("Bader Sanad") }
	<br/>
	${fn:trim("this  will   put   just  one  space  between   every  .  two  words") }
	
	<br/>
	<h1> EscapeXML Tag</h1><br/>
	${fn:escapeXml("<h1> EscapeXML Tag</h1>") }
	
	<br/>----------------------<br/>
	
	<c:set var="We" value="StudyEasy.org"/>
	
	${fn:startsWith("studyeasy.org","s") }
	<br/>${fn:endsWith(We,"org") }
	<br/>${fn:contains(We,"ORG") }
	<br/>${fn:containsIgnoreCase("studyeasy.org","ORG") }
	
	<br/>----------------------<br/>
	
	<br/>${fn:toUpperCase("badere") }
	<br/>${fn:toLowerCase("BADER") }
	<br/>${fn:indexOf("bader","e")}
	<br/>${fn:replace("bader","ba","su") }
	<br/>${fn:substring("bader",2,4) }
	<br/>${fn:substringBefore("bader","e") }
	<br/>${fn:substringAfter("bader","e") }
	
</body>
</html>
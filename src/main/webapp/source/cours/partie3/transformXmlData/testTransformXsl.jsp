<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:import var="xslFile" url="test.xsl"/>
<c:import var="xmlFile" url="inventaire.xml"/>

<x:transform doc="${xmlFile}" xslt="${xslFile}">
	<x:param name="couleur" value="orange" />
</x:transform>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>duc JSP.</p>
	
<%@ page import="java.util.ArrayList, java.util.Date" %>

<%
	ArrayList<Integer> liste = new ArrayList<Integer>();
	liste.add( 12 );
	out.println( liste.get( 0 ) );
%>

	<form action="/tirage" method="post">
<%
	for (int i = 1; i < 4; i++) {
		out.println("Numéro " + i + ": <select name=\"number" + i + "\">");
	
		for (int j = 1; j <= 10; j++) {
			
			out.println("<option value=\"" + j + "\">" + j + "</option>");
		}
		out.println("</select><br />");
	}
%>
		<br /> <input type="submit" value="Valider" />
	</form>
	
	<jsp:include page="page.jsp" /> 

</body>
</html>
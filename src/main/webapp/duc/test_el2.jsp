<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test el2</title>
</head>
<body>

<%-- <jsp:forward page="page.jsp" /> --%>

<% 
/* 	request.getRequestDispatcher( "legumes.jsp" )
		.forward( request, response ); 
 */
%>

<% response.sendRedirect("https://google.com"); %>


</body>
</html>
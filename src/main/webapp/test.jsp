<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>Ceci est une page générée depuis une test.jsp. 22</p>
	<p>
		<%
			String attribut = (String) request.getAttribute("message");
			out.println(attribut);
			String parametre = request.getParameter("auteur");
			out.println(parametre);
		%>
	</p>

</body>
</html>
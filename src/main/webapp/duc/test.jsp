<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Test</title>
</head>
<body>
	<p>Ceci est une page générée depuis une duc/test.JSP.</p>
	<p>
		<%
			String attribut = (String) request.getAttribute("test");
			out.println(attribut);
			String parametre = request.getParameter("auteur");
			out.println(parametre);
		%>
	</p>
	<p>
		Récupération du bean :
		<%
 			com.sdzee.beans.Coyote notreBean = (com.sdzee.beans.Coyote) request.getAttribute("coyote");
			out.println(notreBean.getPrenom());
			out.println(notreBean.getNom()); 
		%>
	</p>
</body>
</html>
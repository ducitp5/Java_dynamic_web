<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<p>duc/page.jsp</p>
	
	<p>Nouveau bean !</p>	
	
	<jsp:useBean id="coyote" class="com.sdzee.beans.Coyote" scope="request" />
		
	hello <jsp:getProperty name="coyote" property="prenom" />
	
	<p>111111111</p>	

	<%= coyote.prenom %>
	
	<p> bean 2 !</p>
	
	<jsp:setProperty name="coyote" property="prenom" value="Wile E." />

	<%= coyote.prenom %>

	<p> bean 22 !</p>
	
	<% coyote.setPrenom("Wile Eee."); %>

	<%= coyote.getPrenom() %>
	
<%
	com.sdzee.beans.Coyote coyote2 = (com.sdzee.beans.Coyote) request.getAttribute( "coyote" );
	if ( coyote == null ){
		coyote = new com.sdzee.beans.Coyote();
		request.setAttribute( "coyote", coyote );
	}
%>

	<jsp:useBean id="coyote3" class="com.sdzee.beans.Coyote">
	</jsp:useBean>
	
	
	<jsp:useBean id="coyote4" class="com.sdzee.beans.Coyote" />
	
	<jsp:setProperty name="coyote" property="prenom" param="prenomCoyote"/>
	
	<% coyote.setPrenom( request.getParameter("prenomCoyote") ); %>

	<jsp:setProperty name="coyote" property="prenom" />

	<% coyote.setPrenom( request.getParameter("prenom") ); %>


	<jsp:setProperty name="coyote" property="*" />
	
	<% coyote.setNom( request.getParameter("nom") ); %>
	<% coyote.setPrenom( request.getParameter("prenom") ); %>
	<% coyote.setGenius( Boolean.valueOf( request.getParameter("genius")) ); %>
	
	<%-- <jsp:forward page="/page.jsp" />

	<% request.getRequestDispatcher( "/page.jsp" ).forward( request, response ); %>
	<jsp:forward page="http://www.siteduzero.com" /> --%>
	
</body>
</html>
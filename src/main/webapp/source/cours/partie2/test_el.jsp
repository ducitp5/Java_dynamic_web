<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="coyote" class="com.sdzee.beans.Coyote" />
	
	<jsp:setProperty name="coyote" property="prenom" value="WileE."/>
	
	<jsp:getProperty name="coyote" property="prenom" />
		
<%
	java.util.List<String> legumes = new java.util.ArrayList<String>();

	legumes.add( "poireau" );
	legumes.add( "haricot" );
	legumes.add( "carotte");
	legumes.add( "pomme de terre" );

	request.setAttribute( "legumes" , legumes );
%>

	${ legumes.get(1) }<br />
	${ legumes[1] }<br />
	${ legumes['1'] }<br />
	${ legumes["1"] }<br />
</body>
</html>
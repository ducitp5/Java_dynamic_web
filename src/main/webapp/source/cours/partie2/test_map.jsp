<%@ page import="java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Test des Maps et EL</title>
</head>
<body>
	<p>
<%
	Map<String, String> aliments = new HashMap<String, String>();
	
	aliments.put( "pomme","fruit" );
	aliments.put( "carotte","légume" );
	aliments.put( "boeuf","viande" );
	aliments.put( "aubergine","légume" );

	request.setAttribute( "aliments", aliments );
%>

		${ aliments.pomme } <br /> 
		${ aliments.carotte } <br />
		${ aliments.boeuf } <br />
		${ aliments.aubergine } <br />
	</p>
</body>
</html>
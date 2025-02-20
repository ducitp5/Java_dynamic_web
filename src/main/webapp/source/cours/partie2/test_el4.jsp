<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Test des expressions EL</title>
</head>
<body>

	<p>
<%
		java.util.Map<String, Integer> desserts = new java.util.HashMap<String, Integer>();
		
		desserts.put("cookies", 8);
		desserts.put("glaces", 3);
		desserts.put("muffins", 6);
		desserts.put("tartes aux pommes", 2);
		
		request.setAttribute("desserts", desserts);
%>
		${ desserts.cookies }<br /> 
		${ desserts.get("cookies") }<br /> 
		${ desserts['cookies'] }<br />
		${ desserts["cookies"] }<br />
<%
		String element = "cookies";
		request.setAttribute("element", element);
%>
		${ desserts[element] }<br />
	</p>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	${ empty 'test' } 
	
	${ empty '' }
	
	${ !empty '' } 
	
	${ true ? 'vrai' : 'faux' } 
	
	${ 'a' > 'b' ? 'oui' : 'non' } 
	
	${ empty 'test' ? 'vide' : 'non vide' }

	${ true && true } <br />
	${ true && false } <br />

	${ !true || false } <br />

	${ 10 / 4 } <br />

	${ 10 mod 4 } <br />

	${ 10 % 4 } <br />

	${ 6 * 7 } <br />
	${ 63 - 8 } <br />

	${ 12 / -8 } <br />

	${ 7 / 0 } <br />
	${ 'a' < 'b' } <br />

	${ 'hip' gt 'hit' } <br />

	${ 'a' < 'b' && 'hip' gt 'hit' } <br />

	${ 6 * 7 == 48 } <br />
	
</body>
</html>
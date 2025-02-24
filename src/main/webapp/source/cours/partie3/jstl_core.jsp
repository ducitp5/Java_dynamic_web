<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:out value="testttt" />
	<c:out value="${ 'a' < 'b' }" />

	<c:out value="${bean}">
		test
	</c:out>
	
	<p>Je suis un 'paragraphe'.</p>

	<table>
		<tr>
			<th>Valeur</th>
			<th>Cube</th>
		</tr>
<%
		int[] cube = new int[8];
		/* Boucle calculant et affichant le cube des entiers de 0 à 7 */
		for (int i = 0; i < 8; i++) {
			cube[i] = i * i * i;
			out.println("<tr><td>" + i + "</td> <td>" + cube[i] + "</td></tr>");
		}
%>
	</table>

	<table>
		<tr>
			<th>Valeur</th>
			<th>Cube</th>
		</tr>
		<c:forEach var="i" begin="0" end="7" step="1">
			<tr>
				<td><c:out value="${i}" /></td>
				<td><c:out value="${i * i * i}" /></td>
			</tr>
		</c:forEach>
	</table>
	
	
</body>
</html>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Traitement des données</title>
</head>
<body>
	<div>
		<c:out value="${paramValues}" />
	</div>
	<p>
		<b>Vous avez renseigné les informations suivantes :</b>
	</p>

	<c:forEach var="parametre" items="${ paramValues }">
		<ul>
			<li><b><c:out value="${ parametre.key }" /></b> :</li>

			<c:forEach var="value" items="${ parametre.value }">

				<c:out value="${ value }" /> :
			</c:forEach>
		</ul>
	</c:forEach>
	<p>
		<b>Vous vous nommez :</b>
	</p>
	<p>

		<c:out value="${ param.nom }" />
		<c:out value="${ param.prenom }" />
	</p>
	<p>
		<b>Vous avez visité les pays suivants :</b>
	</p>
	<p>		
		<c:choose>
			<c:when test="${ !empty paramValues.pays }">
		
				<c:forEach var="pays" items="${ paramValues.pays }">
					<c:out value="${ pays }" />
					<br />
				</c:forEach>
			</c:when>
			<c:otherwise>
				Vous n'avez pas visité de pays parmi la liste proposée.<br />
			</c:otherwise>
		</c:choose>
	
		<c:choose>
			<c:when test="${ !empty param.autre }">
			
				<c:forTokens var="pays" items="${ param.autre }" delims=",">
					<c:out value="${ pays }" />
					<br />
				</c:forTokens>
			</c:when>
			<c:otherwise>
				Vous n'avez pas visité d'autre pays.<br />
			</c:otherwise>
		</c:choose>
	</p>
</body>
</html>

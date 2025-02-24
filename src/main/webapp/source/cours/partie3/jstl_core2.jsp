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

	<%@ page import="java.util.*"%>
<%
	/* Création de la liste et des données */
	Map<String, String> 		news 	= new HashMap<String, String>();
	
	news.put("titre", "Titre de ma première news");
	news.put("contenu", "corps de ma première news");
	
	List<Map<String, String>> 	maListe = new ArrayList<Map<String, String>>();

	maListe.add(news);
	
	news = new HashMap<String, String>();
	news.put("titre", "Titre de ma seconde news");
	news.put("contenu", "corps de ma seconde news");
	
	maListe.add(news);
	
	pageContext.setAttribute("maListe", maListe);
%>
	<c:forEach items="${maListe}" var="news">
		<div class="news">
			<div class="titreNews">
				<c:out value="${news['titre']}" />
			</div>
			<div class="corpsNews">
				<c:out value="${news['contenu']}" />
			</div>
		</div>
	</c:forEach>

	<c:forEach items="${maListe}" var="news" varStatus="status">
		<div class="news">
			News n°
			<c:out value="${status.count}" />
			:
			<div class="titreNews">
				<c:out value="${news['titre']}" />
			</div>
			<div class="corpsNews">
				<c:out value="${news['contenu']}" />
			</div>
		</div>
	</c:forEach>

	<p>
		<c:forTokens 
			var="sousChaine" 
			items="salut; je suis un,gros;zéro+!"
			delims=";,+">

			${sousChaine}	<br />
		</c:forTokens>
	</p>
	
	<a href="<c:url value="jstl_core.jsp" />">lien111</a>

	<c:url value="test.jsp" var="lien" />

	<br>

	<c:url value="/monSiteWeb/countZeros.jsp">
		<c:param name="nbZeros" value="${countZerosBean.nbZeros}" />
		<c:param name="date" value="22/06/2010" />
	</c:url>

	<br>

	<c:import url="footer.html" />
	<c:import url="jstl_core.jsp">
		<c:param name="design" value="bleu" />
	</c:import>
	
	
</body>
</html>
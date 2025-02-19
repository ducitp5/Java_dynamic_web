<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Legumes List</title>
</head>
<body>
    <ul>
        <jsp:useBean id="legumeBean" class="com.example.LegumeBean" scope="page" />
        
        <c:forEach var="legume" items="${legumeBean.legumes}">
            <li>${legume}</li>
        </c:forEach>
        
    </ul>
</body>
</html>

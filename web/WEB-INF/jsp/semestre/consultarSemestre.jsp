<%-- 
    Document   : consultarSemestre
    Created on : 06/07/2017, 14:19:48
    Author     : LFS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Lista de semestre </h1>


        <c:forEach var="semestre" items="${semestres}">


            <c:out value="${semestre.semestreAtual}"/>
            <c:out value="${semestre.aluno.nome}"/>


        </c:forEach>

    </body>
</html>

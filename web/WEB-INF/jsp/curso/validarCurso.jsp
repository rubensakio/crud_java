<%-- 
    Document   : validarCurso
    Created on : 05/07/2017, 13:05:20
    Author     : LFS
--%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
        <style>
            .all-content{
                padding: 10px;
                position: absolute;
                left: 490px;
                top: 25px;
            }

        </style>
    </head>
    <body>
        <div class="all-content">
            <form action="${pageContext.request.contextPath}/controller?command=curso.validar-atualizacao" method="post">
                <p>Código:</p>
                <input type="text" size="6" readonly="true" name="idCurso" value="${curso.idCurso}">
                <p>Curso: </p>
                <input type="text" name="nomeCurso" value="${curso.nomeCurso}" required>
                <br><br>
                <input type="submit" value="Confirmar">


            </form>
        </div>


    </body>
</html>

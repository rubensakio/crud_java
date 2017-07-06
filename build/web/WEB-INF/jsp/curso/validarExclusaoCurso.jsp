<%-- 
    Document   : validarExclusaoCurso
    Created on : 06/07/2017, 11:08:43
    Author     : LFS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="${pageContext.request.contextPath}/controller?command=curso.validar-exclusao" method="post">
            <p> Código: </p>
            <input type="text" size="6" value="${curso.idCurso}" readonly="true" name="idCurso"/>
            <p> Curso: </p>
            <input type="text" value="${curso.nomeCurso}" readonly="true" name="nomeCurso"/>
            <br><br>
            <input type="submit" value="Excluir"/>
        </form>


    </body>
</html>

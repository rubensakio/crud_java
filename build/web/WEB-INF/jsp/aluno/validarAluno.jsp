<%-- 
    Document   : validarAluno
    Created on : 30/06/2017, 11:40:40
    Author     : LFS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Validando atualização </title>
    </head>
    <body>
        <form action="#" method="post">
            <p>Código:</p>
            <input type="text" size="6" readonly="true" name="codAluno" value="${aluno.codAluno}">
            <p>Nome: </p>
            <input type="text" name="nome" value="${aluno.nome}">
            
            
            <p> Nome: </p>
        </form>

    </body>
</html>

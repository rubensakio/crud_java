<%-- 
    Document   : validarExclusaoAluno
    Created on : 03/07/2017, 11:59:06
    Author     : LFS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            .all-content{
                padding: 10px;
                position: absolute;
                left: 490px;
                top: 25px;
            }

        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Validando Exclusão </title>
    </head>
    <body>
        <div class="all-content">
            <form action="${pageContext.request.contextPath}/controller?command=aluno.validar-exclusao" method="post">
                <p>Código:</p>
                <input type="text" size="6" readonly="true" name="codAluno" value="${aluno.codAluno}">
                <p>Nome: </p>
                <input type="text" name="nome" value="${aluno.nome}">
                <p>Email </p>
                <input type="text" name="email" value="${aluno.email}">
                <p>Telefone </p>
                <input type="text" name="telefone" value="${aluno.telefone}">
                <br><br>
                <input type="submit" value="Excluir">


            </form>
        </div>
    </body>
</html>

<%-- 
    Document   : validarAluno
    Created on : 30/06/2017, 11:40:40
    Author     : LFS
--%>

<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Validando atualização </title>
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
            <form action="${pageContext.request.contextPath}/controller?command=aluno.validar-atualizacao" method="post">
                <p>Código:</p>
                <input type="text" size="6" readonly="true" name="codAluno" value="${aluno.codAluno}">
                <p>Nome: </p>
                <input type="text" name="nome" maxlength="15" placeholder="(00)0000-0000"  name="telefone" pattern="\([0-9]{2}\)[0-9]{4}-[0-9]{4}$" required value="${aluno.nome}">
                <p>Email </p>
                <input type="text" name="email" value="${aluno.email}" required>
                <p>Telefone </p>
                <input type="text" name="telefone" value="${aluno.telefone}" required>
                <p>Matrícula </p>
                <input type="text" name="numMatricula" maxlength="8" value="${aluno.numMatricula}" required>
                <br><br>
                <input type="submit" value="Confirmar">


            </form>
        </div>
    </body>
</html>

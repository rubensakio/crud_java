<%-- 
    Document   : validarExclusaoAluno
    Created on : 03/07/2017, 11:59:06
    Author     : LFS
--%>

<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
                <p>Nome:</p>
                <input type="text" name="nome" value="${aluno.nome}" required>
                <p>CPF:</p>
                <input type="text" name="cpf" pattern="\d{3}\.\d{3}\.\d{3}-\d{2}" maxlength="14" OnKeyPress="formatar('###.###.###-##', this)" value="${aluno.cpf}" required>
                <p>Email:</p>
                <input type="email" name="email" value="${aluno.email}" required>
                <p>Celular:</p>
                <input type="text" name="celular" pattern="[0-9]{2} [0-9]{5}-[0-9]{4}$" value="${aluno.celular}"  maxlength="13" OnKeyPress="formatar('## #####-####', this)" required>
                <p>Telefone:</p>
                <input type="text" name="telcomercial" pattern="[0-9]{2} [0-9]{4}-[0-9]{4}$" maxlength="12" value="${aluno.telefone}" OnKeyPress="formatar('## ####-####', this)" required>
                <p>Matricula:</p>
                <input type="text" maxlength="8" name="numMatricula" value="${aluno.numMatricula}" pattern="[0-9]+$" required>

                <br><br>
                <input type="submit" value="Excluir">


            </form>
        </div>
    </body>
</html>

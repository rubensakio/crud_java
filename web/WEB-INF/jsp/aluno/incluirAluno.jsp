<%-- 
    Document   : incluirAluno
    Created on : 29/06/2017, 14:15:06
    Author     : LFS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>

        </style>
        <title> Cadastro </title>
    </head>
    <body>

        <div class="all-content">
            
            <div id="title">
                <h1> Cadastre-se </h1>
            </div>

            <div id="form-cad">
                <form method="post" action="${pageContext.request.contextPath}/controller?command=aluno.inserir">

                    <p>Nome:</p>
                    <input type="text" name="nome" required>
                    <p>Email:</p>
                    <input type="text" name="email"  required>
                    <p>Telefone:</p>
                    <input type="text" name="telefone" maxlength="9" required>
                    <p><input type="submit"></p>
                    <p><input type="button" value="Voltar para lista" onclick="location.href = '${pageContext.request.contextPath}/controller?command=aluno.consultarClientes'"></p>



                </form>
            </div>

        </div>

    </body>
</html>

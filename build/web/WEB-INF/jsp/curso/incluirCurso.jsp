<%-- 
    Document   : incluirCurso
    Created on : 05/07/2017, 10:59:14
    Author     : LFS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            .all-content{
                padding: 10px;
                position: absolute;
                left: 490px;
                top: 25px;
            }
            #title h1{font-family: arial; color: #2E8B57;}
        </style>
        <title> Cadastro </title>
    </head>
    <body>

        <div class="all-content">

            <div id="title">
                <h1> Inserir curso </h1>
            </div>

            <div id="form-cad">
                <form method="post" action="${pageContext.request.contextPath}/controller?command=curso.inserir">

                    <p>Nome:</p>
                    <input type="text" name="nomeCurso" required>
                    <p><input type="submit"></p>
                    <p><input type="button" value="Voltar para lista" onclick="location.href = '${pageContext.request.contextPath}/controller?command=curso.consultarCurso'"></p>



                </form>
            </div>

        </div>

    </body>
</html>

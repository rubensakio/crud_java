<%-- 
    Document   : incluirAluno
    Created on : 29/06/2017, 14:15:06
    Author     : LFS
--%>

<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
        <script>
            function formatar(mascara, documento) {
                var i = documento.value.length;
                var saida = mascara.substring(0, 1);
                var texto = mascara.substring(i);

                if (texto.substring(0, 1) !== saida) {
                    documento.value += texto.substring(0, 1);
                }

            }
        </script>


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
                    <p>CPF:</p>
                    <input type="text" name="cpf" pattern="\d{3}\.\d{3}\.\d{3}-\d{2}" maxlength="14" OnKeyPress="formatar('###.###.###-##', this)" required>
                    <p>Email:</p>
                    <input type="email" name="email" required>
                    <p>Celular:</p>
                    <input type="text" name="celular" pattern="[0-9]{2} [0-9]{5}-[0-9]{4}$"  maxlength="13" OnKeyPress="formatar('## #####-####', this)" required>
                    <p>Telefone:</p>
                    <input type="text" name="telcomercial" pattern="[0-9]{2} [0-9]{4}-[0-9]{4}$" maxlength="12" OnKeyPress="formatar('## ####-####', this)" required>
                    <p>Matricula:</p>
                    <input type="text" maxlength="8" name="numMatricula" pattern="[0-9]+$" required>
                    <p><input type="submit"></p>
                    <p><input type="button" value="Voltar para lista" onclick="location.href = '${pageContext.request.contextPath}/controller?command=aluno.consultarClientes'"></p>



                </form>
            </div>

        </div>

    </body>
</html>

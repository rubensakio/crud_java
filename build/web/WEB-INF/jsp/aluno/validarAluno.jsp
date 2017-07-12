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
    </head>
    <body>
        <div class="all-content">
            <form action="${pageContext.request.contextPath}/controller?command=aluno.validar-atualizacao" method="post">
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
                <input type="submit" value="Confirmar">

            </form>
        </div>
    </body>
</html>

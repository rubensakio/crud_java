<%-- 
    Document   : incluirAluno
    Created on : 29/06/2017, 14:15:06
    Author     : LFS
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            .all-content{
                padding: 10px;
                position: absolute;


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

            <!--<div id="title">
                <h1> Cadastre-se </h1>
            </div>-->


            <div class="conteudoCadastro">
                <div style="width: 100% !important;">
                    <form class="form" method="post" action="${pageContext.request.contextPath}/controller?command=aluno.inserir">
                        <fieldset>
                            <legend>Cadastre-se</legend>

                            <div id="divNome">
                                <p> Nome completo<font color="red" size="2">*</font> </p>
                                <input type="text" name="nome" id="nome" required>
                                <p>CPF<font color="red" size="2">*</font></p>
                                <input type="text" name="cpf" pattern="\d{3}\.\d{3}\.\d{3}-\d{2}" maxlength="14" OnKeyPress="formatar('###.###.###-##', this)" required>
                                <p>RG<font color="red" size="2">*</font></p>
                                <input type="text" name="rg" pattern="\d{2}\.\d{3}\.\d{3}-\d{1}" maxlength="12" OnKeyPress="formatar('##.###.###-#', this)" required>
                                <p>Sexo
                                    <c:forEach var="sexo" items="${sexos}">
                                        <input type="radio" name="gender" value="${sexo.idSexo}" required> ${sexo.sexo}
                                    </c:forEach>
                                </p>
                                <p>Email<font color="red" size="2">*</font></p>
                                <input type="email" name="email" required>
                                <p>Celular</p>
                                <input type="text" name="celular" pattern="[0-9]{2} [0-9]{5}-[0-9]{4}$"  maxlength="13" OnKeyPress="formatar('## #####-####', this)">
                                <p>Telefone<font color="red" size="2">*</font></p>
                                <input type="text" name="telcomercial" pattern="[0-9]{2} [0-9]{4}-[0-9]{4}$" maxlength="12" OnKeyPress="formatar('## ####-####', this)" required>
                                <p>Matricula<font color="red" size="2">*</font></p>
                                <input type="text" maxlength="8" name="numMatricula" pattern="[0-9]+$" required>
                                <p><input type="submit"></p>
                                <p><input type="button" value="Voltar para lista" onclick="location.href = '${pageContext.request.contextPath}/controller?command=aluno.consultarClientes'"></p>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>

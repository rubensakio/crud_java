<%-- 
    Document   : incluirEndereco
    Created on : 18/07/2017, 09:55:59
    Author     : LFS
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                                <p>Endereço:<font color="red" size="2">*</font> </p>
                                <input type="text" name="nomeEndereco" id="nomeEndereco" required>
                                <p>Número:<font color="red" size="2">*</font></p>
                                <input type="text" size="5" name="numero" pattern="[0-9]+$" required>
                                <p>Complemento:</p>
                                <input type="text" name="complemento">
                                <p>Bairro:<font color="red" size="2">*</font></p>
                                <input type="text" name="bairro" required>
                                <p>Cidade:<font color="red" size="2">*</font></p>
                                <input type="text" name="cidade" required>
                                <p>
                                    UF:<font color="red" size="2">*</font>
                                    <input type="text" size="4" name="uf" maxlength="2" required>
                                </p>
                                
                                <p>CEP:<font color="red" size="2">*</font></p>
                                <input type="text" maxlength="9" name="cep" pattern="[0-9]{5}-[0-9]{3}" OnKeyPress="formatar('#####-###', this)" required>
                                <p><input type="submit"></p>
                                <p><input type="button" value="Voltar para lista" onclick="location.href = '${pageContext.request.contextPath}/controller?command=aluno.consultarClientes'"></p>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>


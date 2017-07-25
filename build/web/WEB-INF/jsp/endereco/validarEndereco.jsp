<%-- 
    Document   : validarEndereco
    Created on : 19/07/2017, 09:25:22
    Author     : LFS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Validando atualização - Endereço </title>
        <style>

            * {
                margin: 0;
                padding: 0;
            }

            html, body {
                height: 100%;
                min-height: 100%;
            }

            body {
                font: 15px arial;

            }

            .all-content{

                min-height: 85%;
                display: -webkit-flex;
                display: flex;
                -webkit-align-items: center;
                align-items: center;
                -webkit-justify-content: center;
                justify-content: center;

            }

            fieldset {
                border: 0;
            }
            body, input, select, textarea, button {
                font-family: sans-serif;
                font-size: 1em;
            }
            .grupo:before, .grupo:after {
                content: " ";
                display: table;
            }
            .grupo:after {
                clear: both;
            }
            .campo {
                margin-bottom: 1em;
            }
            campo label {
                margin-bottom: 0.2em;
                color: #666;
                display: block;
            }
            fieldset.grupo .campo {
                float:  left;
                margin-right: 1em;
            }
            .campo input[type="text"],
            .campo input[type="email"],
            .campo input[type="url"],
            .campo input[type="tel"],
            .campo select,
            .campo textarea {
                padding: 0.2em;
                border: 1px solid #CCC;
                box-shadow: 2px 2px 2px rgba(0,0,0,0.2);
                display: block;
            }
            campo select option {
                padding-right: 1em;
            }
            campo input:focus, .campo select:focus, .campo textarea:focus {
                background: #fff;
            }
            .campo label.checkbox {
                color: #000;
                display: inline-block;
                margin-right: 1em;
            }
            .btn-send {
                font-size: 1.3em;
                background: #2E8B57;
                border: 0 ;
                margin-bottom: 1em;
                color: #FFF;
                padding: 0.2em 0.6em;
                box-shadow: 2px 0px 2px rgba(0,0,0,0.5);
                text-shadow: 1px 1px 1px rgba(0,0,0,0.5);


            }

            .btn-send:hover {
                background: #3CB371;
                box-shadow: none;
                text-shadow: none;
            }

            .btn-send, select, label.checkbox {
                cursor: pointer;
            }
            .banner{}
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
    <body onload="document.getElementById('alunos').selectedIndex = ${endereco.aluno.codAluno}">
        <div class="all-content">
            <form action="${pageContext.request.contextPath}/controller?command=endereco.validar-atualizacao" method="post">

                <p>Código:</p>
                <input type="text" size="10" readonly="true" value="${endereco.idEndereco}" name="idEndereco"/>
                <p>Endereço:</p>
                <input type="text" name="nomeEndereco" value="${endereco.nomeEndereco}" required>
                <p>Número:</p>
                <input type="text" size="5" name="numero" value="${endereco.numero}" pattern="[0-9]+$" required>
                <p>Complemento:</p>
                <input type="text" name="complemento" value="${endereco.complemento}" size="10">
                <p>Bairro</p>
                <input type="text" value="${endereco.bairro}" name="bairro" required>
                <p>Cidade</p>
                <input type="text" value="${endereco.cidade}" name="cidade" required>
                <p>UF</p>
                <input type="text" value="${endereco.uf}" size="4" maxlength="2" name="uf" required>
                <p>CEP</p>
                <input type="text" value="${endereco.cep}" name="cep" pattern="[0-9]{5}-[0-9]{3}$" maxlength="9" OnKeyPress="formatar('#####-###', this)" required>
                <p>Aluno</p>
                <select name="alunos" id="alunos">
                    <option value=""><c:out value="--Selecione--"/></option>
                    <c:forEach var="aluno" items="${alunos}">
                        <option value="${aluno.codAluno}">
                            <c:out value="${aluno.nome}"/>
                        </option>
                    </c:forEach>
                </select>
                <br><br>
                <input type="submit" value="Confirmar">

            </form>
            <br><br>
        </div>
    </body>
</html>


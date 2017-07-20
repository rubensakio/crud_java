<%-- 
    Document   : validarExclusaoEndereco
    Created on : 19/07/2017, 09:25:56
    Author     : LFS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <body onload="document.getElementById('alunos').selectedIndex = ${endereco.aluno.codAluno}">
        <div class="all-content">
            <form action="${pageContext.request.contextPath}/controller?command=endereco.validar-exclusao" method="post">

                <p>Código:</p>
                <input type="text" size="10" readonly="true" value="${endereco.idEndereco}" name="idEndereco"/>
                <p>Endereço:</p>
                <input type="text" name="nomeEndereco" readonly="true" value="${endereco.nomeEndereco}" required>
                <p>Número:</p>
                <input type="text" size="5" name="numero" readonly="true" value="${endereco.numero}" pattern="[0-9]+$" required>
                <p>Complemento:</p>
                <input type="text" name="complemento" readonly="true" value="${endereco.complemento}" size="10">
                <p>Bairro</p>
                <input type="text" value="${endereco.bairro}" readonly="true" name="bairro" required>
                <p>Cidade</p>
                <input type="text" readonly="true" value="${endereco.cidade}" name="cidade" required>
                <p>UF</p>
                <input type="text" readonly="true" value="${endereco.uf}" size="4" maxlength="2" name="uf" required>
                <p>CEP</p>
                <input type="text" readonly="true" value="${endereco.cep}" name="cep" pattern="[0-9]{5}-[0-9]{3}$" maxlength="9" OnKeyPress="formatar('#####-###', this)" required>
                <p>Aluno</p>
                <select name="alunos" readonly="true" id="alunos">
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

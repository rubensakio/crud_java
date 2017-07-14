<%-- 
    Document   : validarAluno
    Created on : 30/06/2017, 11:40:40
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
    <body onload="document.getElementById('gender').selectedIndex = ${aluno.sexo.idSexo}">
        <div class="all-content">
            <form action="${pageContext.request.contextPath}/controller?command=aluno.validar-atualizacao" method="post">

                <p>Código:</p>
                <input type="text" size="6" readonly="true" name="codAluno"/>
                <p>Nome:</p>
                <input type="text" name="nome" value="${aluno.nome}" required>
                <p>Data de Nascimento:</p>
                <input type="text" pattern="\d{2}\/\d{2}\/\d{4}" name="dtNascimento" value="${aluno.dtNascimento}" maxlength="10" OnKeyPress="formatar('##/##/####', this)" required> 
                <p>CPF:</p>
                <input type="text" name="cpf" pattern="\d{3}\.\d{3}\.\d{3}-\d{2}" maxlength="14" value="${aluno.cpf}" OnKeyPress="formatar('###.###.###-##', this)" required>
                <p>RG:</p>
                <input type="text" name="rg" pattern="\d{2}\.\d{3}\.\d{3}-\d{1}" maxlength="12" value="${aluno.rg}" OnKeyPress="formatar('##.###.###-#', this)" required>
                <p>Sexo:
                    <select name="gender" id="gender">
                        <option value=""><c:out value="--Selecione--"/></option>
                        <c:forEach var="sexo" items="${sexos}">
                            <option  value="${sexo.idSexo}"> 
                                <c:out value="${sexo.sexo}"/>
                            </option>
                        </c:forEach>
                    </select>
                </p>
                <p>Email:</p>
                <input type="email" name="email" value="${aluno.email}" required>
                <p>Celular:</p>
                <input type="text" name="celular" pattern="[0-9]{2} [0-9]{5}-[0-9]{4}$" value="${aluno.celular}" maxlength="13" OnKeyPress="formatar('## #####-####', this)" required>
                <p>Telefone:</p>
                <input type="text" name="telcomercial" pattern="[0-9]{2} [0-9]{4}-[0-9]{4}$" value="${aluno.telefone}" maxlength="12" OnKeyPress="formatar('## ####-####', this)" required>
                <p>Matricula:</p>
                <input type="text" maxlength="8" name="numMatricula" value="${aluno.numMatricula}" pattern="[0-9]+$" required>
                <br><br>
                <input type="submit" value="Confirmar">

            </form>
        </div>
    </body>
</html>

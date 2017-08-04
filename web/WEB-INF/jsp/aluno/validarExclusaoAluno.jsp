<%-- 
    Document   : validarExclusaoAluno
    Created on : 03/07/2017, 11:59:06
    Author     : LFS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
        <title> Validando exclusão - Aluno </title>
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
    <body>
        <div class="all-content">
            <form action="${pageContext.request.contextPath}/controller?command=aluno.validar-exclusao" method="post">
                <fieldset>
                    <fieldset class="grupo">
                        <div class="campo">
                            <label for="codAluno">Código:</label>
                            <input type="text" style="width: 2.5em" readonly="true" value="${aluno.codAluno}" name="codAluno" id="codAluno"/>
                        </div>

                        <div class="campo">
                            <label for="nome">Nome:</label>
                            <input type="text" name="nome" style="width: 20em" id="nome" value="${aluno.nome}" required>
                        </div>
                    </fieldset>

                               <div class="campo">
                        <label for="dataNascimento">Data de nascimento:</label>
                        <input type="text" name="dataNascimento" readonly="true" id="aluno.dataNascimento" style="width: 20em" value="<fmt:formatDate value="${aluno.dataNascimento.time}" pattern="dd/MM/yyyy"/>" required>
                    </div>


                    <fieldset class="grupo">
                        <div class="campo">
                            <label for="cpf">CPF:</label>
                            <input type="text" name="cpf" id="cpf" style="width: 10em" readonly="true" pattern="\d{3}\.\d{3}\.\d{3}-\d{2}" maxlength="14" value="${aluno.cpf}" OnKeyPress="formatar('###.###.###-##', this)" required>
                        </div>

                        <div class="campo">
                            <label for="rg">RG:</label>
                            <input type="text" name="rg" id="rg" style="width: 10em" readonly="true" pattern="\d{2}\.\d{3}\.\d{3}-\d{1}" maxlength="12" value="${aluno.rg}" OnKeyPress="formatar('##.###.###-#', this)" required>
                        </div>
                    </fieldset>
                    <div class="campo">
                        <label for="email">Email:</label>
                        <input type="email" name="email" id="email" style="width: 20em" readonly="true" value="${aluno.email}" required>
                    </div>

                    <fieldset class="grupo">
                        <div class="campo">
                            <label for="telcomercial">Telefone:</label>
                            <input type="text" name="telcomercial" id="telcomercial" readonly="true" pattern="[0-9]{2} [0-9]{4}-[0-9]{4}$" value="${aluno.telefone}" maxlength="12" OnKeyPress="formatar('## ####-####', this)" required>
                        </div>

                        <div class="campo">
                            <label for="celular">Celular:</label>
                            <input type="text" name="celular" id="celular" readonly="true" pattern="[0-9]{2} [0-9]{5}-[0-9]{4}$" value="${aluno.celular}" maxlength="13" OnKeyPress="formatar('## #####-####', this)" required>
                        </div>

                    </fieldset>

                    <fieldset class="grupo">

                        <div class="campo">
                            <label for="naturalidade">Naturalidade</label>
                            <input type="text" name="naturalidade" readonly="true" id="naturalidade" style="width: 10em" value="${aluno.naturalidade}" required>
                        </div>
                        <div class="campo">
                            <label for="uf">UF</label>
                            <input type="text" name="uf" id="uf" style="width: 2.5em" readonly="true" value="${aluno.uf}" required>
                        </div>                        
                    </fieldset>

                    <div class="campo">
                        <label for="numMatricula">Matricula:</label>
                        <input type="text" maxlength="8" readonly="true" name="numMatricula" id="numMatricula" value="${aluno.numMatricula}" pattern="[0-9]+$" required>
                    </div>
                    <button type="submit" class="btn-send" name="submit"> Excluir </button>
                </fieldset>
            </form>
        </div>
    </body>
</html>

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
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
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
                background: blue;
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




        <title> Cadastro de alunos </title>
    </head>
    <body>


        <div class="all-content">     

            <form class="form" method="post" action="${pageContext.request.contextPath}/controller?command=aluno.inserir">
                <fieldset>
                    <div class="campo">
                        <label for="nome">Nome completo</label><font color="red" size="2">*</font> 
                        <input type="text" name="nome" placeholder="Nome Completo" id="nome" style="width: 20em" value="" required>
                    </div>

                    <div class="campo">
                        <label for="dataNascimento">Data de nascimento</label><font color="red" size="2">*</font> 
                        <input type="text" name="dataNascimento" placeholder="01/01/1900" OnKeyPress="formatar('##/##/####', this)"  id="dataNascimento" style="width: 10em" value="" required>
                    </div>



                    <fieldset class="grupo">

                        <div class="campo">
                            <label for="cpf">CPF</label><font color="red" size="2">*</font>
                            <input type="text" name="cpf" placeholder="000.000.000-00" id="cpf" style="width: 10em" value=""  pattern="\d{3}\.\d{3}\.\d{3}-\d{2}" maxlength="14" OnKeyPress="formatar('###.###.###-##', this)" required>
                        </div>

                        <div class="campo">
                            <label for="rg">RG</label><font color="red" size="2">*</font>
                            <input type="text" name="rg" style="width: 10em" placeholder="00.000.000-0" value="" id="rg" pattern="\d{2}\.\d{3}\.\d{3}-\d{1}" maxlength="12" OnKeyPress="formatar('##.###.###-#', this)" required>
                        </div>

                    </fieldset>


                    <div class="campo">
                        <label>Sexo</label>
                        <c:forEach var="sexo" items="${sexos}">
                            <label class="checkbox">
                                <input type="radio" name="gender" value="${sexo.idSexo}" required> ${sexo.sexo}
                            </label>
                        </c:forEach>
                    </div>

                    <div class="campo">
                        <label for="email">Email</label><font color="red" size="2">*</font>
                        <input type="email" name="email" placeholder="Seu email" id="email" style="width: 20em" value="" required>

                    </div>

                    <fieldset class="grupo">
                        <div class="campo">
                            <label for="telcomercial">Telefone</label><font color="red" size="2">*</font>
                            <input type="text" name="telcomercial" placeholder="00 0000-0000" id="telcomercial" style="width: 10em" value="" pattern="[0-9]{2} [0-9]{4}-[0-9]{4}$" maxlength="12" OnKeyPress="formatar('## ####-####', this)" required>
                        </div>
                        <div class="campo">
                            <label for="celular">Celular</label>
                            <input type="text" name="celular" id="celular" style="width: 10em" placeholder="00 00000-0000" value="" pattern="[0-9]{2} [0-9]{5}-[0-9]{4}$"  maxlength="13" OnKeyPress="formatar('## #####-####', this)">
                        </div>


                    </fieldset>

                    <fieldset class="grupo">

                        <div class="campo">
                            <label for="naturalidade">Naturalidade</label><font color="red" size="2">*</font>
                            <input type="text" name="naturalidade" placeholder="Naturalidade" id="naturalidade" style="width: 10em" value="" required>
                        </div>
                        <div class="campo">
                            <label for="uf">UF</label><font color="red" size="2">*</font>
                            <input type="text" name="uf" id="uf" style="width: 2.5em" placeholder="UF" value="" required>
                        </div>                        
                    </fieldset>

                    <div class="campo">
                        <label for="numMatricula">Matricula</label><font color="red" size="2">*</font>
                        <input type="text" maxlength="8" name="numMatricula" placeholder="00000000" id="numMatricula" pattern="[0-9]{8}$" required>
                    </div>

                    <button type="submit" class="btn-send" name="submit"> Enviar</button> &nbsp;
                    <button class="btn-send"  onclick="location.href = '${pageContext.request.contextPath}/controller?command=aluno.consultarClientes'"> Voltar para lista</button>
                </fieldset>
            </form>

        </div>
    </body>
</html>



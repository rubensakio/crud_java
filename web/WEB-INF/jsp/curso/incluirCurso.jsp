<%-- 
    Document   : incluirCurso
    Created on : 24/07/2017, 12:57:02
    Author     : LFS
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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


        <title> Cadastro </title>
    </head>
    <body>


        <div class="all-content">     

            <form class="form" method="post" action="${pageContext.request.contextPath}/controller?command=curso.inserir">
                <fieldset>
                    <div class="campo">
                        <label for="nomeInstituicao">Nome da Instituição</label><font color="red" size="2">*</font> 
                        <input type="text" name="nomeInstituicao" id="nomeInstituicao" style="width: 20em" value="" required>
                    </div>

                    <fieldset class="grupo">

                        <div class="campo">
                            <label for="nomeCurso">Curso</label><font color="red" size="2">*</font>
                            <input type="text" name="nomeCurso" id="nomeCurso" style="width: 15em" value="" required>
                        </div>

                        <div class="campo">
                            <label for="semestreAtual">Semestre atual</label><font color="red" size="2">*</font>
                            <input type="text" name="semestreAtual" style="width: 5em" value="" id="semestreAtual" required>
                        </div>

                    </fieldset>

                    <div class="campo">
                        <label for="alunos">Aluno</label>
                        <select name="alunos" id="alunos">
                            <option value=""><c:out value="--Selecione--"/></option>
                            <c:forEach var="aluno" items="${alunos}">
                                <option value="${aluno.codAluno}">
                                    <c:out value="${aluno.nome}"/>
                                </option>
                            </c:forEach>
                        </select>
                    </div>


                    <button type="submit" class="btn-send" name="submit"> Enviar</button> &nbsp;
                    <button class="btn-send"  onclick="location.href = '${pageContext.request.contextPath}/controller?command=aluno.consultarClientes'"> Voltar para lista</button>
                </fieldset>
            </form>

        </div>
    </body>
</html>

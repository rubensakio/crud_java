<%-- 
    Document   : excluirAluno
    Created on : 03/07/2017, 09:48:53
    Author     : LFS
--%>

<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <style>

            #button a{

                text-decoration: none;
                color: blue;
                font-family: Verdana;
                background: -webkit-linear-gradient(#00FF7F,#00FF00 100%);
                border: 1px solid black;
                border-radius: 3px;
                display: block;
                color: #ffffff;
                font-family: "Trebuchet MS";
                text-align: center;
                font-size: 20px;
                font-weight: bold;
                line-height: 35px;
                position:  relative;
                width: 80px;
                padding: 0px 0px;
            }
            .all-content{
                padding: 10px;
                position: absolute;
                left: 20px;
                top: 25px;
            }
            #title h1{font-family: arial; color: #2E8B57;}

        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
        <title> Exclusão de alunos na lista </title>
    </head>
    <body>
        <div class="all-content">

            <div id="title">
                <h1> Removendo cadastro de alunos </h1>
            </div>
            <div id="form-select">
                <form method="post" action="${pageContext.request.contextPath}/controller?command=aluno.validarExclusaoAluno">
                    <select name="alunos" onchange="this.form.submit()">
                        <option value=""> --Selecione-- </option>
                        <c:forEach var="aluno" items="${alunos}">
                            <option value="${aluno.codAluno}">

                                <c:out value="${aluno.nome}"/> &nbsp;
                                <fmt:formatDate value="${aluno.dataNascimento.time}" pattern="dd/MM/yyyy"/> &nbsp;
                                <c:out value="${aluno.cpf}"/> &nbsp;
                                <c:out value="${aluno.rg}"/> &nbsp;
                                <c:out value="${aluno.email}"/> &nbsp;
                                <c:out value="${aluno.celular}"/> &nbsp;
                                <c:out value="${aluno.telefone}"/> &nbsp;
                                <c:out value="${aluno.naturalidade}"/> &nbsp;
                                <c:out value="${aluno.uf}"/> &nbsp;
                                <c:out value="${aluno.numMatricula}"/> &nbsp;
                                <c:out value="${aluno.sexo.sexo}"/> &nbsp;

                            </option>
                        </c:forEach>

                    </select>

                </form>

            </div>
            <br><br>
            <div id="button">
                <a href="${pageContext.request.contextPath}/controller?command=aluno.consultarClientes"> Voltar </a>
            </div> 
        </div>

    </body>
</html>

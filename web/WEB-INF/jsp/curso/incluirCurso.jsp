<%-- 
    Document   : incluirCurso
    Created on : 05/07/2017, 10:59:14
    Author     : LFS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <style>
            .all-content{
                padding: 10px;
                position: absolute;
                left: 490px;
                top: 25px;
            }
            #title h1{font-family: arial; color: #2E8B57;}
        </style>
        <title> Cadastro </title>
    </head>
    <body>

        <div class="all-content">

            <div id="title">
                <h1> Inserir curso </h1>
            </div>

            <div id="form-cad">
                <form method="post" action="${pageContext.request.contextPath}/controller?command=curso.inserir">

                    <p>Curso:</p>
                    <input type="text" name="nomeCurso" required>

                    <p>Em que semestre você está?</p>
                    <input type="text" size="5" name="semestreAtual" pattern="[0-9]+$" required>

                    <p>Aluno:</p>
                    <select name="alunos">
                        <option value=""> <c:out value="--Selecione--"/> </option>
                        <c:forEach var="aluno" items="${alunos}">
                            <option value="${aluno.codAluno}">
                                <c:out value="${aluno.numMatricula}"/> &nbsp;
                                <c:out value="${aluno.nome}"/> 
                            </option>
                        </c:forEach>
                    </select> 

                    <p><input type="submit"></p>
                    <p><input type="button" value="Voltar para lista" onclick="location.href = '${pageContext.request.contextPath}/controller?command=curso.consultarCurso'"></p>



                </form>
            </div>

        </div>

    </body>
</html>

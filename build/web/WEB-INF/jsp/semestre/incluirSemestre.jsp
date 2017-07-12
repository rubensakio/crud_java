<%-- 
    Document   : incluirSemestre
    Created on : 07/07/2017, 13:40:45
    Author     : LFS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                <h1> Incluir semestre </h1>
            </div>

            <div id="form-cad">
                <form method="post" action="${pageContext.request.contextPath}/controller?command=semestre.inserir">

                    <p>Em que semestre você está?</p>
                    <input type="text" size="8" name="semestreAtual"  pattern="[0-9]+$" required>
                    <p>Aluno:</p>
                    <select name="alunos">
                        <option value="">--Selecione--</option>
                        <c:forEach var="aluno" items="${alunos}">
                            <option value="${aluno.codAluno}">
                                <c:out value="${aluno.numMatricula}"/>
                                <c:out value="${aluno.nome}"/>
                            </option>
                        </c:forEach>
                    </select>
                    <p>Curso:</p>

                    <select name="cursos">
                        <option value="">--Selecione--</option>
                        <c:forEach var="curso" items="${cursos}">
                            <option value="${curso.idCurso}">
                                <c:out value="${curso.nomeCurso}"/>

                            </option>
                        </c:forEach>
                    </select>

                    <p><input type="submit"></p>
                    <p><input type="button" value="Voltar para lista" onclick="location.href = '${pageContext.request.contextPath}/controller?command=semestre.consultarSemestre'"></p>



                </form>
            </div>

        </div>

    </body>
</html>
<%-- 
    Document   : validarSemestre
    Created on : 10/07/2017, 10:55:42
    Author     : LFS
--%>


<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    </head>
    <body onload="document.getElementById('alunos').selectedIndex = ${semestre.aluno.codAluno}">
        <div class="all-content">
            <form action="${pageContext.request.contextPath}/controller?command=semestre.validar-atualizacao" method="post">

                <p>Código:</p>
                <input type="text" size="6" readonly="true" name="idSemestre" value="${semestre.idSemestre}"/>


                <p>Aluno </p>
                <select name="alunos" id="alunos">
                    <option value=""> <c:out value="--Selecione--"/> </option>
                    <c:forEach var="aluno" items="${alunos}">
                        <option value="${aluno.codAluno}">
                            <c:out value="${aluno.numMatricula}"/> &nbsp;
                            <c:out value="${aluno.nome}"/> 
                        </option>
                    </c:forEach>

                </select>

                <p>Curso </p>
                <select name="cursos" id="cursos">
                    <option value=""> <c:out value="--Selecione--"/> </option>
                    <c:forEach var="curso" items="${cursos}">
                        <option value="${curso.idCurso}">
                            <c:out value="${curso.nomeCurso}"/> 
                        </option>
                    </c:forEach>

                </select>

                <p>Semestre atual: </p>
                <input type="text" size="8" name="semestreAtual" pattern="[0-9]+$" value="${semestre.semestreAtual}"/> 

                <br><br>
                <input type="submit" value="Confirmar">


            </form>
        </div>
    </body>
</html>
<%-- 
    Document   : alterarSemestre
    Created on : 10/07/2017, 10:29:29
    Author     : LFS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="all-content">

            <div id="title">
                <h1> Atualizando semestre </h1>
            </div>
            <div id="form-select">
                <form method="post" action="${pageContext.request.contextPath}/controller?command=semestre.validarSemestre">
                    <select name="semestres" onchange="this.form.submit()">
                        <option value=""> <c:out value="--Selecione--"/> </option>

                        <c:forEach var="semestre" items="${semestres}">
                            <option value="${semestre.idSemestre}">

                                <c:out value="${semestre.aluno.numMatricula}"/> &nbsp;
                                <c:out value="${semestre.aluno.nome}"/> &nbsp;
                                <c:out value="${semestre.curso.nomeCurso}"/> &nbsp;
                                <c:out value="${semestre.semestreAtual}"/> &nbsp;


                            </option>
                        </c:forEach>

                    </select>

                </form>

            </div>
            <br><br>
            <div id="button">
                <a href="${pageContext.request.contextPath}/controller?command=semestre.consultarSemestre"> Voltar </a>
            </div> 
        </div>
    </body>
</html>

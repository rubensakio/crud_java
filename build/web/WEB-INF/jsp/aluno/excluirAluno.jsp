<%-- 
    Document   : excluirAluno
    Created on : 03/07/2017, 09:48:53
    Author     : LFS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Exclusão de alunos na lista </title>
    </head>
    <body>
        <div class="all-content">

            <div id="title">
                <h1> Atualizando cadastro de alunos </h1>
            </div>
            <div id="form-select">
                <form method="post" action="${pageContext.request.contextPath}/controller?command=aluno.validarAluno">
                    <select name="alunos" onchange="this.form.submit()">
                        <option value=""> --Selecione-- </option>
                        <c:forEach var="aluno" items="${alunos}">
                            <option value="${aluno.codAluno}">

                            <c:out value="${aluno.nome}"/> &nbsp;
                            <c:out value="${aluno.email}"/> &nbsp;
                            <c:out value="${aluno.telefone}"/> &nbsp;

                            </option>
                        </c:forEach>

                    </select>

                </form>

            </div>
            <br><br>
            <div id="button">
                <a href="${pageContext.request.contextPath}"> Voltar </a>
            </div> 
        </div>

    </body>
</html>

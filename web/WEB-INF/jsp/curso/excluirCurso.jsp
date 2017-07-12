<%-- 
    Document   : excluirCurso
    Created on : 05/07/2017, 15:13:35
    Author     : LFS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Exclusão de alunos </title>
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
                left: 490px;
                top: 25px;
            }
            #title h1{font-family: arial; color: #2E8B57;}

        </style>
    </head>
    <body>
        <div class="all-content">
            <div id="title">
                <h1> Excluindo curso </h1>
            </div>
            <form method="post" action="${pageContext.request.contextPath}/controller?command=curso.validarExclusaoCurso">

                <select name="cursos" onchange="this.form.submit()">
                    <option value=""> --Selecione-- </option>
                    <c:forEach var="curso" items="${cursos}">
                        <option value="${curso.idCurso}">

                            <c:out value="${curso.nomeCurso}"/> &nbsp;


                        </option>
                    </c:forEach>

                </select>

            </form>
            <br><br>
            <div id="button">
                <a href="${pageContext.request.contextPath}/controller?command=curso.consultarCurso"> Voltar </a>
            </div> 
        </div>

    </body>
</html>

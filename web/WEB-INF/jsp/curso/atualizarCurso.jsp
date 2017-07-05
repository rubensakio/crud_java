<%-- 
    Document   : atualizarCurso
    Created on : 05/07/2017, 11:29:17
    Author     : LFS
--%>

<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        </style>
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
        <title> Alterar cadastro de alunos </title>
    </head>
    <body>

        <div class="all-content">

            <div id="title">
                <h1> Atualizando curso </h1>
            </div>
            <div id="form-select">
                <form method="post" action="${pageContext.request.contextPath}/controller?command=curso.validarCurso">
                    <select name="cursos" onchange="this.form.submit()">
                        <option value=""> --Selecione-- </option>
                        <c:forEach var="curso" items="${cursos}">
                            <option value="${curso.idCurso}">
                                <c:out value="${curso.nomeCurso}"/> 
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
    </div>
</body>
</html>

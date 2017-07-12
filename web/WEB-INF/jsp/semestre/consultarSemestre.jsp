<%-- 
    Document   : consultarSemestre
    Created on : 06/07/2017, 14:19:48
    Author     : LFS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            *{padding:0; margin:0;}


            .all-content{

                margin-top: 60px;
                margin-left: 400px;

            }
            .all-content table td{

                text-align: center;
                padding: 10px;
            }
            .menu1{

                padding:10px;
            }
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
                font-size: 24px;
                font-weight: bold;
                line-height: 35px;
                position:  relative;
                width: 80px;
                padding: 5px 15px;
            }

            .all-content #button{

                margin-left: 170px;
            }

            .menu{


                list-style: none;
                border: 1px solid #c0c0c0;
                float:left; 

            }
            .menu li{

                position:relative; 
                float:left; 
                border-right:1px solid #c0c0c0; 
            }
            .menu li a{
                color:#333;
                text-decoration:none;
                padding:5px 10px;
                display:block;
            }
            .menu li a:hover{
                background:#333; 
                color:#fff; 
                -webkit-box-shadow:0 3px 10px 0 #ccc; 
                text-shadow:0px 0px 5px #fff; 
            }
            .menu li  ul{
                position:absolute; 
                top:25px; 
                left:0;
                background-color:#fff; 
                display:none;
            }


        </style> 
    </head>
    <body>
        <div class="menu1">
            <ul class="menu">
                <li/><a href="${pageContext.request.contextPath}/controller?command=semestre.formulario"> Novo  </a>
                <li/><a href="${pageContext.request.contextPath}/controller?command=semestre.atualizar"> Atualizar </a>
                <li/><a href="#"> Remover </a>
            </ul>
        </div>

        <div class="all-content">

            <table>
                <tr>
                    <th> Matrícula </th>
                    <th> Aluno </th>
                    <th> Curso </th>
                    <th> Semestre atual </th>
                </tr>

                <c:forEach var="semestre" items="${semestres}">

                    <tr>
                        <td> <c:out value="${semestre.aluno.numMatricula}"/> </td>
                        <td> <c:out value="${semestre.aluno.nome}"/> </td>
                        <td> <c:out value="${semestre.curso.nomeCurso}"/> </td>
                        <td> <c:out value="${semestre.semestreAtual}"/> </td>
                    </tr>


                </c:forEach>
            </table>

            <div id="button">

                <a href="${pageContext.request.contextPath}"> Voltar </a>

            </div> <br><br>
        </div>
    </body>
</html>

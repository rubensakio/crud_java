<%-- 
    Document   : index
    Created on : 27/06/2017, 14:16:28
    Author     : LFS
--%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
        <style>

            .all-content{
                
                margin-left: 400px;
                margin-top: 25px;

            }
            #link ul{list-style-type: none;}

            #link ul li a{text-decoration:none;} 

            #title h1{font-family: arial; color: #2E8B57;}

        </style>

    </head>
    <body>

        <div class="all-content">

            <div id="title">
                <h1> Ol� bem vindo � p�gina de cadastro </h1> 
            </div>

            <br><br>

            <div id="link">
                <ul>
                    <li/><a href="/projLFS/controller?command=aluno.consultarClientes"> Aluno </a><br><br>
                    <li/><a href="/projLFS/controller?command=curso.consultarCurso"> Curso </a><br><br>
                    <li/><a href="#"> Endere�o </a><br><br>
                </ul>  
            </div>
        </div>
    </body>
</html>

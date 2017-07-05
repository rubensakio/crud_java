<%-- 
    Document   : index
    Created on : 27/06/2017, 14:16:28
    Author     : LFS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                <h1> Olá bem vindo à página de cadastro </h1> 
            </div>

            <br><br>

            <div id="link">
                <ul>
                    <li/><a href="/projLFS/controller?command=aluno.consultarClientes"> Aluno </a><br><br>
                    <li/><a href="/projLFS/controller?command=curso.consultarCurso"> Curso </a><br><br>
                    <li/><a href="#"> Semestre </a><br><br>
                </ul>  
            </div>
        </div>
    </body>
</html>

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
        <title>Home</title>
        <style>
            * {
                margin: 0;
                padding: 0;
            }

            .all-content{

                margin-top: 60px;
                margin-left: 90px;

            }
            
            .links1{padding:10px;}
            .links{

                list-style: none;
                border: 1px solid #c0c0c0;
                float:left; 
            }
            .links li{

                position:relative; 
                float:left; 
                border-right:1px solid #c0c0c0; 

            }

            .links li a{
                color:#333;
                text-decoration:none;
                padding:5px 10px;
                display:block;

            }

            .links li a:hover{

                background:#333; 
                color:#fff; 
                -webkit-box-shadow:0 3px 10px 0 #ccc; 
                text-shadow:0px 0px 5px #fff; 

            }

            .links li ul{
                position:absolute; 
                top:25px; 
                left:0;
                background-color:#fff; 
                display:none;

            }



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

            <div class="links1">
                <ul class="links">
                    <li/><a href="/projLFS/controller?command=aluno.consultarClientes"> Aluno </a><br><br>
                    <li/><a href="/projLFS/controller?command=curso.consultarCurso"> Curso </a><br><br>
                    <li/><a href="/projLFS/controller?command=endereco.consultarEndereco"> Endereço </a><br><br>
                </ul>  
            </div>

            <div class="instrucao">
                <h3> Instrução </h3>
            </div>
        </div>
    </body>
</html>

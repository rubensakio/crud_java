<%-- 
    Document   : index
    Created on : 27/06/2017, 14:16:28
    Author     : LFS
--%>

<?xml version="1.0" encoding="iso-8859-1"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html  xml:lang="pt" lang="pt">

    <head>
        <title> Home </title>
        <style type="text/css">
            *{padding:0; margin:0;}

            body {
                padding:0px;
                margin:0px;

            }

            #menu ul {
                padding:0px;
                margin:0px;
                float: left;
                width: 100%;
                background-color:#2E8B57;
                list-style:none;
                font:80% Tahoma;

            }

            #menu ul li { display: inline; }

            #menu ul li a {
                background-color: #2E8B57;
                color: #fff;
                text-decoration: none;
                padding: 10px 30px;
                float:left;
                font-family: Arial;

            }

            #menu ul li a:hover {
                background-color:#3CB371;
                color: #6D6D6D;

            }

            .all-menu{
                margin-top: 30px;
            }

            .title{
                margin-left: 20px;
                margin-top: 20px;
                font-family: Arial;
                font-style: oblique;
                color: #008000;

            }

            .instrucao{

                position: absolute; 
                margin: 0;
                top: 40%;
                left: 20%;
                margin-right: -50%;
                font-family: sans-serif;
                
            }
            .instrucao #sub-title h3{
                text-align: center;

            }
            .instrucao #text-essay p{
                padding: 3px;

            }

            .all-content{

            }

        </style>
    </head>

    <body>

        <div class="all-content">
            <div class="title">
                <h1>Bem vindo a página de cadastro</h1>
            </div>

            <div class="all-menu">
                <div id="menu">
                    <ul>
                        <li><a href="/projLFS/controller?command=aluno.consultarClientes"> Aluno </a></li>
                        <li><a href="/projLFS/controller?command=endereco.consultarEndereco"> Endereço </a></li>
                        <li><a href="/projLFS/controller?command=curso.consultarCurso"> Curso </a></li>

                    </ul>
                </div>
            </div>

            <div class="instrucao">
                <div id="sub-title">
                    <h3> Instrução </h3>
                </div>
                <br>
                    <div id="text-essay">
                        <p> Siga as instruções em ordem </p><br>
                            <p> <b>Primeiro passo:</b> clique em Alunos e cadastre-se com seus dados pessoais</p>
                            <p> <b>Segundo passo:</b> clique em Endereço e informe seu endereço residencial </p>
                            <p> <b>Terceiro passo:</b> cadastre o seu curso em Curso </p>
                    </div>
            </div>
        </div>
    </body>
</html>
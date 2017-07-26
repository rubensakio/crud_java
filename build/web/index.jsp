<%-- 
    Document   : index
    Created on : 27/06/2017, 14:16:28
    Author     : LFS
--%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <style type="text/css">
            body {
                margin: 0;
                padding: 0;
                background: #ccc;
            }

            .nav ul {
                list-style: none;
                background-color: #444;
                text-align: center;
                padding: 0;
                margin: 0;
            }
            .nav li {
                font-family: 'Oswald', sans-serif;
                font-size: 1.2em;
                line-height: 40px;
                height: 40px;
                border-bottom: 1px solid #888;
            }

            .nav a {
                text-decoration: none;
                color: #fff;
                display: block;
                transition: .3s background-color;
            }

            .nav a:hover {
                background-color: #005f5f;
            }

            .nav a.active {
                background-color: #fff;
                color: #444;
                cursor: default;
            }

            @media screen and (min-width: 600px) {
                .nav li {
                    width: 120px;
                    border-bottom: none;
                    height: 50px;
                    line-height: 50px;
                    font-size: 1.4em;
                }

                /* Option 1 - Display Inline */
                .nav li {
                    display: inline-block;
                    margin-right: -4px;
                }

                /* Options 2 - Float
                .nav li {
                  float: left;
                }
                .nav ul {
                  overflow: auto;
                  width: 600px;
                  margin: 0 auto;
                }
                .nav {
                  background-color: #444;
                }
                */
            }

        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Home</title>
    </head>
    <body>



        <div class="nav">
            <ul>
                <li class="aluno"/><a href="/projLFS/controller?command=aluno.consultarClientes"> Aluno </a><br><br>
                <li class="curso"/><a href="/projLFS/controller?command=curso.consultarCurso"> Curso </a><br><br>
                <li class="endereco"/><a href="/projLFS/controller?command=endereco.consultarEndereco"> Endereço </a><br><br>
            </ul> 
        </div>
        <!--<div class="instrucao">
            <h3> Instrução </h3>
    </div>-->

    </body>
</html>

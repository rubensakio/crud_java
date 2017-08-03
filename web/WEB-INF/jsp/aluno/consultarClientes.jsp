<%-- 
    Document   : consultarClientes
    Created on : 28/06/2017, 09:53:43
    Author     : LFS
--%>

<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
            * {
                margin: 0;
                padding: 0;
            }

            html, body {
                height: 100%;
                min-height: 100%;
            }


            .all-content{

                margin-top: 60px;
                margin-left: 90px;

            }
            .all-content #table1 table td{

            }
            .all-content #table1 table{

                text-align: center;
                font-size: 15px;
                margin-top: 110px;
                border-collapse: collapse;
                padding: 20px;

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

                margin-left: 470px;
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
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
        <title> Lista de alunos cadastrados </title>
    </head>
    <body>

        <div class="menu1">
            <ul class="menu">
                <li/><a href="${pageContext.request.contextPath}/controller?command=aluno.formulario"> Novo  </a>
                <li/><a href="${pageContext.request.contextPath}/controller?command=aluno.atualizar"> Atualizar </a>
                <li/><a href="${pageContext.request.contextPath}/controller?command=aluno.excluir"> Remover </a>
            </ul>
        </div>
        <div class="all-content">  


            <div id="table1">
                <table width="95%" border="1">
                    <tr>
                        <th>ID</th> 
                        <th>Nome do Aluno</th>
                        <th> Data de Nascimento</th>
                        <th>CPF</th> 
                        <th>R.G.</th> 
                        <th>Usuário</th>
                        <th>Celular</th> 
                        <th>Telefone</th> 
                        <th>Naturalidade</th> 
                        <th>UF</th> 
                        <th>Matricula</th> 
                        <th>Sexo</th>

                    </tr>

                    <c:forEach var="aluno" items="${alunos}">
                        <tr>

                            <td><b><c:out value="${aluno.codAluno}"/></b></td> 

                            <td><c:out value="${aluno.nome}"/></td> 
                            
                            <td><fmt:formatDate value="${aluno.dataNascimento.time}" pattern="dd/MM/yyyy"/></td>

                            <td><c:out value="${aluno.cpf}"/></td> 

                            <td><c:out value="${aluno.rg}"/> </td>

                            <td><c:out value="${aluno.email}"/></td> 

                            <td><c:out value="${aluno.telefone}"/></td> 

                            <td><c:out value="${aluno.celular}"/> </td>

                            <td><c:out value="${aluno.naturalidade}"/> </td>

                            <td><c:out value="${aluno.uf}"/> </td>

                            <td><c:out value="${aluno.numMatricula}"/></td> 

                            <td><c:out value="${aluno.sexo.sexo}"/></td> 


                        </tr>
                    </c:forEach>

                </table>
            </div>


            <br><br>




            <div id="button">

                <a href="${pageContext.request.contextPath}"> Voltar </a>

            </div> <br><br>


        </div>
    </body>
</html>

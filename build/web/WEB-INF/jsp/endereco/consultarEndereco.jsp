<%-- 
    Document   : consultarEndereco
    Created on : 12/07/2017, 11:51:43
    Author     : LFS
--%>

<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
            *{padding:0; margin:0;}


            .all-content{

                margin-top: 60px;
                margin-left: 400px;

            }
            .all-content table td{

                text-align: center;
                padding:10px;
                font-size: 15px;



            }
            .all-content table{

                text-align: center;
                font-size: 14px;



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

                margin-left: 270px;
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Lista de alunos cadastrados </title>
    </head>
    <body>

        <div class="menu1">
            <ul class="menu">
                <li/><a href="${pageContext.request.contextPath}/controller?command=endereco.formulario"> Novo  </a>
                <li/><a href="${pageContext.request.contextPath}/controller?command=endereco.atualizar"> Atualizar </a>
                <li/><a href="${pageContext.request.contextPath}/controller?command=endereco.excluir"> Remover </a>
            </ul>
        </div>
        <div class="all-content">  


            <div id="table1">
                <table width="750px" cellspacing="2">
                    <tr>

                        <th> Nome do Aluno</th> 
                        <th> Endereço </th>  
                        <th> Número  </th> 
                        <th> Bairro </th> 
                        <th> Cidade </th> 
                        <th> UF </th> 

                    </tr>


                    <c:forEach var="endereco" items="${enderecos}">
                        <tr>

                            <td> <c:out value="${endereco.aluno.nome}"/> </td> 

                            <td> <c:out value="${endereco.nomeEndereco}"/> </td>  

                            <td> <c:out value="${endereco.numero}"/> </td>    

                            <td> <c:out value="${endereco.bairro}"/> </td> 

                            <td> <c:out value="${endereco.cidade}"/> </td> 

                            <td> <c:out value="${endereco.uf}"/> </td> 

                        <br>
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

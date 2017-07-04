<%-- 
    Document   : inserirMatricula
    Created on : 04/07/2017, 14:09:56
    Author     : LFS
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Inserção de Matrícula</title>
    </head>
    <body>
        <h1> primeiro passo - cadastre-se como aluno </h1>
        
        <form method="post" action="${pageContext.request.contextPath}/controller?command=matricula.primeiropasso">

            <p>Nome:</p>
            <input type="text" name="nome" required>
            <p>Email:</p>
            <input type="text" name="email"  required>
            <p>Telefone:</p>
            <input type="text" maxlength="9" name="telefone" required>
            <p><input type="submit" value="Próximo"></p>
            <p><input type="button" value="Cancelar" onclick="location.href = '${pageContext.request.contextPath}"></p>



        </form>

    </body>
</html>

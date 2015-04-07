<%-- 
    Document   : responseBook
    Created on : 7 avr. 2015, 16:19:43
    Author     : Dylan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="bookBean" scope="session" class="tp4javaEE.BookHandler" />
        <jsp:setProperty name="bookBean" property="title" />
        <jsp:setProperty name="bookBean" property="author" />
        <jsp:setProperty name="bookBean" property="year" />
        <h1>Success !</h1>
        <p>
            Titre : <jsp:getProperty name="bookBean" property="title" />
            Auteur : <jsp:getProperty name="bookBean" property="author" />
            Année : <jsp:getProperty name="bookBean" property="year" />
        </p>
        <p>
            <a href="index.jsp">retour</a>
        </p>
    </body>
</html>

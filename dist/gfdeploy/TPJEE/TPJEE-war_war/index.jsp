<%-- 
    Document   : index
    Created on : 7 avr. 2015, 16:37:56
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
        <div>
            <form id="bookForm" action="responseBook.jsp">
                <p>
                    <label for="title">Titre : </label>
                    <input id="title" name="title" type="text" value="<jsp:getProperty name="bookBean" property="title" />"/>
                </p>
                <p>
                    <label for="author">Auteur : </label>
                    <input id="author" name="author" type="text" value="<jsp:getProperty name="bookBean" property="author" />"/>
                </p>
                <p>
                    <label for="year">Année de parution : </label>
                    <input id="year" name="year" type="number" value="<jsp:getProperty name="bookBean" property="year" />"/>
                </p>
                <p>
                    <input type="submit" value="Envoyer"/>
                </p>
            </form>
        </div>
    </body>
</html>

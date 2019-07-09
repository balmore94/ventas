<%-- 
    Document   : tabla
    Created on : 07-jul-2019, 12:36:32
    Author     : Balmore
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>id</th>
                    
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${lista}" var="ver">
                <tr>
                    <td>${ver.id_contacto}</td>
                   
                </tr>
                </c:forEach>
            </tbody>
        </table>

    </body>
</html>

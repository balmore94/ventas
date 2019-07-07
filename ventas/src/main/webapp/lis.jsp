<%-- 
    Document   : lis
    Created on : 07-jul-2019, 12:00:37
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
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>NOMBRE</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="lista" var="ver">
                    <tr>
                        <td>${ver.nombre}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </body>
</html>

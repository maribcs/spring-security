<%-- 
    Document   : vendedor
    Created on : 19/07/2015, 12:01:28 PM
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <body>
        <h1>Bienvenido Vendedor</h1>
        <h2>${mensaje}</h2>
        <c:if test="${pageContext.request.userPrincipal.name != null}">
               <h3><a href="<%=request.getContextPath()%>/logout">Cerrar sesión</a></h3>
            </c:if>
    </body>
</html>

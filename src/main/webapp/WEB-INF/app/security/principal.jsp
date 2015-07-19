<%-- 
    Document   : principal
    Created on : 19/07/2015, 12:00:26 PM
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
    <body>
        <h1>Bienvenido a la Tienda de Comercio Electrónico</h1>
        <h2>${mensaje}</h2>
               <h4><a href="<%=request.getContextPath()%>/ventas/principal">Vendedor</a></h4>
               <h4><a href="<%=request.getContextPath()%>/adm/principal">Administrador</a></h4>    
               <h4><a href="<%=request.getContextPath()%>/ventas/informacion">Info</a></h4>    
               <sec:authorize access="isAnonymous()">
                   <a href="<%=request.getContextPath()%>/login">Login</a>
               </sec:authorize>
               <sec:authorize access="isAuthenticated()">
                   <a href="<%=request.getContextPath()%>/logout">Cerrar Sesion</a>
               </sec:authorize>
    
    </body>
</html>

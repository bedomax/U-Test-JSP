<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="col s6 offset-s3">
    <% Solicitud solicitud = (Solicitud)request.getAttribute("solicitud");%>
    <p>
        <b>Nombre:</b> ${solicitud.getFirstName()}
    </p>
    <p>
        <b>Apellidos:</b> ${solicitud.getLastName()}
    </p>
    <p>
        <b>Email:</b> ${solicitud.getEmail()}
    </p>
    <p>
        <b>Género:</b> ${solicitud.getGenero()}
    </p>

    <p>
        <b>Comentarios:</b> ${solicitud.getComentarios()}
    </p>

    <ul class="collection with-header">
        <li class="collection-header"><b>Lenguajes de Programación</b></li>
        <c:forEach items="${solicitud.getLangs()}" var="item">
            <li class="collection-item">${item}</li>
        </c:forEach>
    </ul>

    <ul class="collection with-header">
        <li class="collection-header"><b>Idiomas</b></li>
        <c:forEach items="${solicitud.getIdiomas()}" var="item">
            <li class="collection-item">${item}</li>
        </c:forEach>
    </ul>

</div>
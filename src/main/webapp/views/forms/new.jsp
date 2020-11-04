<%@include file="/views/layout/partials/_head.jsp"%>
    <div class="container">
        <div class="row">
            <jsp:include page="/views/layout/partials/_header.jsp" >
                <jsp:param name="text" value="Ingresa la siguiente información para poder procesar tu solicitud:" />
            </jsp:include>
            <!-- Formulario -->
            <%@include file="/views/forms/partials/_form.jsp"%>
            <!-- Fin -->
        </div>
    </div>
<%@include file="/views/layout/partials/_footer.jsp"%>
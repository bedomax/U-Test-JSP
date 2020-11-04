
<%@ page import="bean.Solicitud" %>
<%@include file="/views/layout/partials/_head.jsp"%>
<div class="container">
    <div class="row">
        <jsp:include page="/views/layout/partials/_header.jsp" >
            <jsp:param name="text" value="Gracias por ingresar tu información, a continuación el detalle" />
        </jsp:include>

        <%@include file="/views/forms/partials/_show.jsp"%>

        <div class="col s12 center-align">
            <a href="/demo" class="waves-effect waves-light btn">Regresar</a>
        </div>

    </div>
</div>
<%@include file="/views/layout/partials/_footer.jsp"%>
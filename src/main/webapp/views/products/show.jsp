<%@ page import="models.Product" %>
<%@include file="/views/layout/partials/_head.jsp"%>
<div class="container">
    <div class="row">
        <jsp:include page="/views/layout/partials/_header.jsp" >
            <jsp:param name="title" value="Ver producto" />
            <jsp:param name="text" value="Proporciona los datos del producto:" />
        </jsp:include>

        <% Product product = (Product)request.getAttribute("product"); %>

        <form action="/demo" class="col s6" method="post" accept-charset="utf-8">
            <div class="input-field col s12">
                <input placeholder="" value="${product.getKey()}" name="clave" id="clave" type="text" class="validate" disabled>
                <label for="clave">Clave</label>
            </div>
            <div class="input-field col s12">
                <input placeholder="" value="${product.getName()}" name="name" id="name" type="text" class="validate" disabled>
                <label for="name">Nombre</label>
            </div>
            <div class="input-field col s12">
                <input placeholder="" name="price" value="${product.getPrice()}" id="price" type="text" class="validate" disabled>
                <label for="price">Precio</label>
            </div>
            <div class="input-field col s12">
                <input placeholder="" name="quantity" id="quantity" value="${product.getQuantity()}" type="text" class="validate" disabled>
                <label for="quantity">Cantidad</label>
            </div>


            <div class="input-field col s12">
                <div>
                    <button class="btn waves-effect waves-light" type="submit" name="action">
                        Regresar
                    </button>
                    <a href="/demo/listados" class="btn waves-effect waves-light btn-secondary">
                        Ver productos
                    </a>
                </div>


            </div>
        </form>



    </div>
</div>
<%@include file="/views/layout/partials/_footer.jsp"%>
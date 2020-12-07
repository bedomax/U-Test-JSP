<%@include file="/views/layout/partials/_head.jsp"%>
<div class="container">
    <div class="row">
        <jsp:include page="/views/layout/partials/_header.jsp" >
            <jsp:param name="title" value="Crear producto" />
            <jsp:param name="text" value="Proporciona los datos del producto:" />
        </jsp:include>

        <form action="/demo/show" class="col s6" method="post" accept-charset="utf-8">
            <div class="input-field col s12">
                <input placeholder="" name="key" id="key" type="text" class="validate">
                <label for="key">Clave</label>
            </div>
            <div class="input-field col s12">
                <input placeholder="" name="name" id="name" type="text" class="validate">
                <label for="name">Nombre</label>
            </div>
            <div class="input-field col s12">
                <input placeholder="" name="price" id="price" type="text" class="validate">
                <label for="price">Precio</label>
            </div>
            <div class="input-field col s12">
                <input placeholder="" name="quantity" id="quantity" type="text" class="validate">
                <label for="quantity">Cantidad</label>
            </div>
            <div class="input-field col s12">
                <div>
                    <button class="btn waves-effect waves-light btn-secondary" type="reset" name="action">
                        Borrar
                    </button>
                    <button class="btn waves-effect waves-light" type="submit" name="action">
                        Registrar
                    </button>
                </div>
                <div style="margin-top: 1rem;">
                    <a href="/demo/listados" class="btn waves-effect waves-light btn-secondary">
                        Ver productos
                    </a>
                </div>


            </div>
        </form>



    </div>
</div>
<%@include file="/views/layout/partials/_footer.jsp"%>
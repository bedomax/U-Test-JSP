<%@ page import="java.util.List" %>
<%@ page import="models.Product" %>
<%@ page import="java.util.Iterator" %>
<%@include file="/views/layout/partials/_head.jsp"%>

<% List<Product>list = (List<Product>) request.getAttribute("productos");%>
<% Iterator<Product> iter = list.iterator();%>
<% Product prod = null; %>

    <div class="container">
        <div class="row">
            <jsp:include page="/views/layout/partials/_header.jsp" >
                <jsp:param name="title" value="Productos" />
                <jsp:param name="text" value="Listado de los items ingresados:" />
            </jsp:include>

            <table class="striped">
                <thead>
                <tr>
                    <th>Clave</th>
                    <th>Nombre</th>
                    <th>Precio</th>
                    <th>Cantidad</th>
                </tr>
                </thead>
                <tbody>
                <%
                    while(iter.hasNext()){
                        prod=iter.next();
                %>
                    <tr>
                        <td><%=prod.getKey()%></td>
                        <td><%=prod.getName()%></td>
                        <td>$<%=prod.getPrice()%></td>
                        <td><%=prod.getQuantity()%></td>
                    </tr>
                <% } %>
                </tbody>
            </table>

            <div style="margin-top: 3rem;">
                <a href="/demo/listados" class="btn waves-effect waves-light btn-secondary">
                    Ver productos
                </a>
                <a href="/demo" class="btn waves-effect waves-light">
                    Registrar
                </a>
            </div>

        </div>
    </div>

<%@include file="/views/layout/partials/_footer.jsp"%>
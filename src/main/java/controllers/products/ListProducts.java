package controllers.products;

        import DAO.ProductDAO;
        import models.Product;

        import javax.servlet.RequestDispatcher;
        import javax.servlet.ServletException;
        import javax.servlet.http.HttpServlet;
        import javax.servlet.http.HttpServletRequest;
        import javax.servlet.http.HttpServletResponse;
        import java.io.IOException;
        import java.util.Iterator;
        import java.util.List;

public class ListProducts extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        /* List products */
        ProductDAO productDAO = new ProductDAO();
        List<Product>list=productDAO.list();
        Iterator<Product>iter=list.iterator();
        req.setAttribute("productos",list);
        req.setAttribute("iterator",iter);
        /* Fin products */

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/products/index.jsp");
        dispatcher.forward(req, resp);
    }
}

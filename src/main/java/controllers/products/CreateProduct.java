package controllers.products;

import DAO.ProductDAO;
import models.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CreateProduct extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/products/new.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /* Create Product */
        Product product = new Product(req);
        new ProductDAO().add(product);
        req.setAttribute("product",product);
        /* Fin */
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/products/show.jsp");
        dispatcher.forward(req, resp);
    }
}

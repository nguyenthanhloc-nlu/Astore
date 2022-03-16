package com.astore.controller.client;

import com.astore.model.Product;
import com.astore.services.implement.ProductServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/Product-watch")
public class Watch extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductServices ps = new ProductServices();
        List<Product> watch = ps.getProductByIdCate(4, 0, 18);
        System.out.println(watch.toString());
        System.out.println("watch.size(): " + watch.size());
        request.setAttribute("watch", watch);
        request.getRequestDispatcher("/view/client/product-list/product-watch.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

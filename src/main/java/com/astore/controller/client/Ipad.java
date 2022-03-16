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

@WebServlet("/Product-ipad")
public class Ipad extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductServices ps = new ProductServices();
        List<Product> ipad = ps.getProductByIdCate(3, 0, 18);
        System.out.println(ipad.toString());
        System.out.println("ipad.size(): " + ipad.size());
        request.setAttribute("ipad", ipad);
        request.getRequestDispatcher("/view/client/product-list/product-ipad.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

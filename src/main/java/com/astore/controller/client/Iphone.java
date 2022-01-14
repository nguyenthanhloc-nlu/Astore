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

@WebServlet(name = "Iphone", value = "/Product-iphone")
public class Iphone extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductServices ps = new ProductServices();
        List<Product> iphone = ps.getProductByIdCate(1, 0, 18);
        System.out.println(iphone.toString());
        System.out.println("iphone.size(): " + iphone.size());
        request.setAttribute("iphone", iphone);
        request.getRequestDispatcher("/view/client/product-list/product-iphone.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

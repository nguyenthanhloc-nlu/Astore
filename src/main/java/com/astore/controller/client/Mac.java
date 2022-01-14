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

@WebServlet(name = "Mac", value = "/Product-mac")
public class Mac extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductServices ps = new ProductServices();
        List<Product> mac = ps.getProductByIdCate(2, 0, 18);
        System.out.println(mac.toString());
        System.out.println("mac.size(): " + mac.size());
        request.setAttribute("mac", mac);
        request.getRequestDispatcher("/view/client/product-mac.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

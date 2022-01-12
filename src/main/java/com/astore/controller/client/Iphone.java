package com.astore.controller.client;

import com.astore.model.Product;
import com.astore.services.implement.ProductServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Iphone", value = "/Iphone")
public class Iphone extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductServices ps = new ProductServices();
        List<Product> iphone = ps.getProductByIdCate(1, 0, 40);
//        System.out.println(iphone.size());
        request.setAttribute("iphone", iphone);
        request.getRequestDispatcher("view/client/products-iphone.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

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

@WebServlet("")
public class Home extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductServices ps = new ProductServices();
        List<Product> iphone = ps.getProductByIdCate(1, 4);
        List<Product> mac = ps.getProductByIdCate(2, 4);
        List<Product> ipad = ps.getProductByIdCate(3, 4);
        List<Product> watch = ps.getProductByIdCate(4, 4);

        System.out.println(iphone.size());


        request.setAttribute("iphone", iphone);
        request.setAttribute("mac", mac);
        request.setAttribute("watch", watch);
        request.setAttribute("ipad", ipad);
        response.setContentType("text/html");


        request.getRequestDispatcher("view/client/home.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

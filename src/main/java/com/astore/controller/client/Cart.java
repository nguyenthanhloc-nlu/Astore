package com.astore.controller.client;

import com.astore.services.implemet.ProductServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "cart", value = "/cart")
public class Cart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductServices ps = new ProductServices();


        request.getRequestDispatcher("view/client/cart.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    public static void main(String[] args) {
        System.out.println("asas");
    }
}

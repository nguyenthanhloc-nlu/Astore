package com.astore.controller.client;

import com.astore.model.Product;
import com.astore.services.implement.ProductServices;
import com.google.gson.Gson;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SearchProduct", value = "/search")
public class SearchProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String search = request.getParameter("search");
        if(search == null) {
            request.setAttribute("products", new ArrayList<Product>());
            request.getRequestDispatcher("/view/client/product-list/ResultSearch.jsp").forward(request, response);
            return;
        }


        //  tính tông số sp theo tên
        int countProduct = ProductServices.getInstance().countProductByName(search);

        int totalPages = 0;
        if(countProduct % 30 > 0){
            totalPages = countProduct / 30 +1;
        }else
            totalPages = countProduct / 30;

        request.setAttribute("totalPages", totalPages);
        request.setAttribute("search", search);
        List<Product> products = ProductServices.getInstance().getByNameLimit(search, 0, 30);
        request.setAttribute("products", products);
        request.getRequestDispatcher("/view/client/product-list/ResultSearch.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        doGet(request,response);
        String page = request.getParameter("page");
        String search = request.getParameter("search");
        System.out.println(page +"page");
        try {
            int pageInt = Integer.parseInt(page) - 1;
            int start = pageInt *30 +1;
            int end = start +29;

            List<Product> products = ProductServices.getInstance().getByNameLimit(search, start, end);

            String json = null;
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            Gson gson = new Gson();
            json = gson.toJson(products);
            response.getWriter().write(json);


        }catch(NumberFormatException e){

        }
    }
}
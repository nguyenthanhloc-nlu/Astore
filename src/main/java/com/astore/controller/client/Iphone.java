package com.astore.controller.client;

import com.astore.model.Product;
import com.astore.services.implement.ProductServices;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/Product-iphone")
public class Iphone extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int countProduct = ProductServices.getInstance().countProductByCategoryId(1);
        int totalPages = 0;
        if(countProduct % 30 > 0){
            totalPages = countProduct / 30 +1;
        }else
            totalPages = countProduct / 30;
        request.setAttribute("totalPages", totalPages);
        ProductServices ps = new ProductServices();
        List<Product> iphone = ps.getProductByIdCate(1, 0, 30);
        System.out.println(iphone.toString());
        System.out.println("iphone.size(): " + iphone.size());
        System.out.println("total page "+ " "+totalPages);
        request.setAttribute("iphone", iphone);
        request.getRequestDispatcher("/view/client/product-list/product-iphone.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String page = request.getParameter("page");
        System.out.println(page +"page");
        try {
            int pageInt = Integer.parseInt(page) - 1;
            int start = pageInt *30 +1;
            int end = start +29;

            List<Product> products = ProductServices.getInstance().getProductByIdCate(1, start, end);

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

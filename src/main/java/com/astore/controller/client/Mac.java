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

@WebServlet("/Product-mac")
public class Mac extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int countProduct = ProductServices.getInstance().countProductByCategoryId(2);
        int totalPages = 0;
        if(countProduct % 30 > 0){
            totalPages = countProduct / 30 +1;
        }else
            totalPages = countProduct / 30;


        request.setAttribute("totalPages", totalPages);
        ProductServices ps = new ProductServices();
        List<Product> mac = ps.getProductByIdCate(2, 0, 30);
        System.out.println(mac.toString());
        System.out.println("mac.size(): " + mac.size());
        request.setAttribute("mac", mac);
        request.getRequestDispatcher("/view/client/product-list/product-mac.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String page = request.getParameter("page");
        System.out.println(page +"page");
        try {
            int pageInt = Integer.parseInt(page) - 1;
            int start = pageInt *30 +1;
            int end = start +29;

            List<Product> products = ProductServices.getInstance().getProductByIdCate(2, start, end);

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

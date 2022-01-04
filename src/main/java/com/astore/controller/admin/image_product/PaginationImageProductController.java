package com.astore.controller.admin.image_product;

import com.astore.model.Image;
import com.astore.model.Product;
import com.astore.services.implemet.ImageProductServices;
import com.astore.services.implemet.ProductServices;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PaginationImageProductController", value = "/manage/page-image-product")
public class PaginationImageProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String page = request.getParameter("page");
        System.out.println(page);
        try {
            int pageInt = Integer.parseInt(page) - 1;
            int start = pageInt *50 +1;
            int end = start +49;

            List<Image> images = ImageProductServices.getInstance().getAll(start, end);

            String json = null;
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            Gson gson = new Gson();
            json = gson.toJson(images);
            response.getWriter().write(json);


        }catch(NumberFormatException e){

        }
    }
}

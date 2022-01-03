package com.astore.controller.admin.image_product;

import com.astore.model.Image;
import com.astore.services.implemet.ImageProductServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ImageProductController", value = "/image-product")
public class ImageProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Image> images = ImageProductServices.getInstance().getAll();
        request.setAttribute("images", images);

        request.getRequestDispatcher("view/admin/show-image-product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

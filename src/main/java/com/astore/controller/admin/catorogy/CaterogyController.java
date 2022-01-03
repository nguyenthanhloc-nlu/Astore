package com.astore.controller.admin.catorogy;

import com.astore.model.Category;
import com.astore.model.User;
import com.astore.services.implemet.CategoryServices;
import com.astore.services.implemet.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CaterogyController", value = "/category")
public class CaterogyController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // tính toán
        List<Category> category = CategoryServices.getInstance().getAll();
        request.setAttribute("category", category);

        // chuyển hướng
        request.getRequestDispatcher("view/admin/show-category.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

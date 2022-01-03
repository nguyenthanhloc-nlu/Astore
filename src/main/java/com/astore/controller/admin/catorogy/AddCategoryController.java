package com.astore.controller.admin.catorogy;

import com.astore.model.Category;
import com.astore.services.ICategoryServices;
import com.astore.services.implemet.CategoryServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AddCategoryController", value = "/add-category")
public class AddCategoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("view/admin/add-category.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("category_id");
        String name = request.getParameter("category_name");

        Category category = new Category(Integer.parseInt(id), name);
        boolean check = CategoryServices.getInstance().insert(category);

        if (check) {
            List<Category> categories = CategoryServices.getInstance().getAll();
            request.setAttribute("category", categories);
            // chuyển hướng
            request.getRequestDispatcher("view/admin/show-category.jsp").forward(request,response);
        }else{
            request.setAttribute("category", category);
            request.setAttribute("error", "Đã xãy ra lỗi");
            // chuyển hướng
            request.getRequestDispatcher("view/admin/add-category.jsp").forward(request,response);
        }

    }
}

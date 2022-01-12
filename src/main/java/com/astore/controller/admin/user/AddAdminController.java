package com.astore.controller.admin.user;

import com.astore.model.User;
import com.astore.services.implement.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AddAdminController", value = "/manage/add-admin")
public class AddAdminController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/view/admin/add-admin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("admin-username");
        String name = request.getParameter("admin-name");
        String password = request.getParameter("admin-password");

        User user = new User();
        user.setUserName(username);
        user.setName(name);
        user.setPassword(password);


        boolean check = UserServices.getInstance().insertAdmin(user);

        if(check) {
            System.out.println("insert admin ok");
            List<User> users = UserServices.getInstance().getAllUserByGroup(1);
            request.setAttribute("users", users);
            // chuyển hướng
            request.getRequestDispatcher("/view/admin/admin.jsp").forward(request,response);
        }else{
            request.setAttribute("user", user);
            // chuyển hướng
            request.getRequestDispatcher("/view/admin/add-admin.jsp").forward(request,response);
        }
    }
}

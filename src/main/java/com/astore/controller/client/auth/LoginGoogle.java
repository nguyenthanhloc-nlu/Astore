package com.astore.controller.client.auth;

import com.astore.model.User;
import com.astore.services.implement.UserServices;
import com.astore.tool.HashPassword;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginGoogle", value = "/loginGoogle")
public class LoginGoogle extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession ss =request.getSession();
        String action = request.getParameter("action");
        String email =request.getParameter("email");
        String name = request.getParameter("name");
        String pwd = request.getParameter("id");
        String phoneRegister="chưa có thông tin";
        String gender ="chưa có thông tin";
        String birthday ="2001/01/01";
        String address ="chưa có thông tin";
        String avatar=request.getParameter("imageUrl");
        String familyName = request.getParameter("familyName");
        String givenName = request.getParameter("givenName");
        System.out.println(email+" "+name+" "+pwd+" "+avatar+" "+familyName+" "+givenName);
        if (action.equals("Google")) {
            if (UserServices.getInstance().checkUserExist(email)) {
                ss.setAttribute("userNameAccountLogin", email);
                request.getRequestDispatcher("index.jsp").forward(request, response);
            } else {
                ss.setAttribute("userNameAccountLogin", email);
                UserServices.getInstance().insertUser(new User(0, name, name, email, gender, birthday, phoneRegister, address, avatar, HashPassword.getInstance().hashPassword(pwd), null));
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        }
        else
            request.getRequestDispatcher("view/client/sign_user/signIn.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}

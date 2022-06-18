package com.astore.controller.client;

import com.astore.model.Store;
import com.astore.services.implement.HelpServices;
import com.astore.services.implement.StoreServices;
import com.astore.model.Help;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "help", value = "/help")
public class HelpController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Store store = StoreServices.getInstance().getById(1);
        String name = store.getName();
        String linkLogo = store.getLinkLogo();
        request.setAttribute("linkLogoStore", linkLogo);
        request.setAttribute("nameStore",name);
        request.getRequestDispatcher("view/client/help.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Store store = StoreServices.getInstance().getById(1);
        String name = store.getName();
        String linkLogo = store.getLinkLogo();
        request.setAttribute("linkLogoStore", linkLogo);
        request.setAttribute("nameStore",name);

        String helpName = request.getParameter("help-name");
        String helpContact = request.getParameter("help-contact");
        String helpContent = request.getParameter("help-content");

        Help help = new Help(helpName, helpContent, helpContact);

        boolean check = HelpServices.getInstance().insert(help);
        if(check){
            request.setAttribute("success", "Gửi thành công");
        }else{
            request.setAttribute("error", "Gửi không thành công");
            request.setAttribute("help", help);
        }

        request.getRequestDispatcher("view/client/help.jsp").forward(request,response);
    }
}

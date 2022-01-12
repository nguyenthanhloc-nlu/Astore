package com.astore.controller.client.account_information;

import com.astore.model.HistoryDelivery;
import com.astore.model.User;
import com.astore.services.implement.InformationAccountServices;
import com.astore.services.implement.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HistoryOrderAccount", value = "/historyOrderAccount")
public class HistoryOrderAccount extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession ss = request.getSession();
        String userNameAccountLogin = ss.getAttribute("userNameAccountLogin").toString();
        User userLogin = UserServices.getInstance().getInformationUser(userNameAccountLogin);
        List<HistoryDelivery> listOrder = InformationAccountServices.getInstance().listOrder(userLogin.getId());

        if (listOrder.size()==0) {
            request.setAttribute("noOrderUser", "Bạn chưa có đơn hàng nào");
        }
        else{
            request.setAttribute("listOrder",listOrder);
        }
    request.getRequestDispatcher("view/client/information_account/history-account.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request,response);
    }
}

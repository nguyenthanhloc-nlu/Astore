package com.astore.controller.client.account_information;

import com.astore.model.User;
import com.astore.services.implement.InformationAccountServices;
import com.astore.services.implement.UserServices;
import com.astore.tool.Format;
import com.restfb.exception.FacebookOAuthException;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "InformationAccount", value = "/informationAccount")
public class InformationAccount extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession ss = request.getSession();

        String userNameAccountLogin = ss.getAttribute("userNameAccountLogin").toString();
        User userLogin = UserServices.getInstance().getInformationUser(userNameAccountLogin);
        request.setAttribute("imgAccount",userLogin.getAvatar());
        request.setAttribute("fullNameAccount",userLogin.getName());
        request.setAttribute("birthdayAccount", Format.getInstance().formatDate(userLogin.getBirthday()));
        request.setAttribute("phoneAccount",userLogin.getPhone());
        request.setAttribute("rankAccount", InformationAccountServices.getInstance().rankUser(userLogin.getId()));
        request.setAttribute("quantilyOrderAccount",InformationAccountServices.getInstance().countOrderUser(userLogin.getId())+" đơn hàng");
        request.setAttribute("levelRankAccount",InformationAccountServices.getInstance().rankUser(userLogin.getId()));
        request.setAttribute("giftAccount","chưa có ưu đãi");
        request.setAttribute("dateEmbarkAccount",Format.getInstance().formatDate(userLogin.getCreatedAt()));
        request.getRequestDispatcher("view/client/information_account/account.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request,response);
    }
}

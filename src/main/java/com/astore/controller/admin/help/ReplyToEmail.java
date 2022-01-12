package com.astore.controller.admin.help;

import com.astore.services.implement.SendMailServices;
import com.astore.services.implement.UserServices;
import javax.mail.Session;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ReplyToEmail", value = "/replyToEmail")
public class ReplyToEmail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userMail = "19130137@st.hcmuaf.edu.vn";
        String nameFrom ="ASTORE";
        String passUserMail= "xrjlbwixmthlrube";
        String subjectMail = "Ma Xac Thuc";

        String  emailOrPhone = request.getParameter("emailUser");
        String nameUser = request.getParameter("nameUser");
        String messSendMail ="Xin chào !"+nameUser+"\n"+" thông tin hổ trợ của bạn đã được ASTORE ghi nhận, " +
                "cảm ơn bạn đã sử dụng sản phảm của ASTORE." +
                " ASTORE sẽ liên hệ với bạn trong thời gian sớm nhất."+"\n"+
                "Xin vui lòng không trả lời Email này.";
        Session sessRes = SendMailServices.getInstance().loginMail(userMail,passUserMail);
        if (UserServices.getInstance().checkEmail(emailOrPhone)){
            SendMailServices.getInstance().sendMailTo(sessRes,userMail,nameFrom,emailOrPhone,subjectMail,messSendMail);
        }
        request.getRequestDispatcher("/view/client/sign_user/show-help-reply.jsp").forward(request,response);
    }
}

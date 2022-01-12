package com.astore.controller.client.auth;

import com.astore.services.implement.UserServices;
import com.astore.tool.CheckEmail;
import com.astore.tool.SendMail;

import javax.mail.Session;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SendMailForgotPWD", value = "/sendMailForgotPWD")
public class SendMailForgotPWD extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String userMail = "19130137@st.hcmuaf.edu.vn";
        String nameFrom ="ASTORE";
        String passUserMail= "xrjlbwixmthlrube";
        String subjectMail = "Ma Xac Thuc";
        HttpSession ss = request.getSession();
        String  emailOrPhone = ss.getAttribute("userNameForgotPWD").toString();

        String codeOTP = SendMail.getInstance().ranDomOTP();
        ss.setAttribute("OTPForgotPWD",codeOTP);
        String messSendMail =codeOTP+" la ma xac thuc OTP lay lai mat khau ASTORE. De tranh bi mat tien, tuyet doi KHONG chia se ma nay voi bat ky ai";
        Session sessRes = SendMail.getInstance().loginMail(userMail,passUserMail);
        if (CheckEmail.getInstance().checkEmail(emailOrPhone)){
            SendMail.getInstance().sendMailTo(sessRes,userMail,nameFrom,emailOrPhone,subjectMail,messSendMail);

        }
        if (CheckEmail.getInstance().checkNumberPhone(emailOrPhone)){

        }
        request.getRequestDispatcher("/view/client/sign_user/verificationCode.jsp").forward(request,response);
    }
    }


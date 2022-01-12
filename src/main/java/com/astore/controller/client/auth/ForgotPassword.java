package com.astore.controller.client.auth;

import com.astore.services.implement.UserServices;
import com.astore.tool.CheckEmail;
import com.astore.tool.SendMail;

import javax.mail.Session;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ForgotPassword", value = "/forgotPassword")
public class ForgotPassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String emailOrPhone = request.getParameter("email-phone-rs");
        String userMail = "19130137@st.hcmuaf.edu.vn";
        String nameFrom ="ASTORE";
        String passUserMail= "xrjlbwixmthlrube";
        System.out.println(emailOrPhone);
    HttpSession ss = request.getSession();
    if (UserServices.getInstance().checkUserExist(emailOrPhone)){
        if (CheckEmail.getInstance().checkEmail(emailOrPhone)){
            String subjectMail = "Ma Xac Thuc";
            String codeOTP = SendMail.getInstance().ranDomOTP();
            String messSendMail =codeOTP+" la ma xac thuc OTP lay lai mat khau ASTORE. De tranh bi mat tien, tuyet doi KHONG chia se ma nay voi bat ky ai";request.setAttribute("errorVerificationOTPForgotPWD","");
        request.setAttribute("fromMessErrorOTPForgotPWD","");
        ss.setAttribute("userNameForgotPWD",emailOrPhone);
        ss.setAttribute("OTPForgotPWD",codeOTP);
       Session ssSendMail= SendMail.getInstance().loginMail(userMail,passUserMail);
       SendMail.getInstance().sendMailTo(ssSendMail,userMail,nameFrom,emailOrPhone,subjectMail,messSendMail);
       response.sendRedirect("view/client/sign_user/verificationCode.jsp");
        }

    }
    else{
        request.setAttribute("errorVerificationOTPForgotPWD","Tài khoản của bạn chưa được đăng ký");
        request.setAttribute("fromMessErrorOTPForgotPWD","from-mess-error-OTP-forgot-PWD");
        request.getRequestDispatcher("view/client/sign_user/resetPassword.jsp").forward(request,response);
    }
    }
}

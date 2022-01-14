package com.astore.controller.client.auth;

import com.astore.model.*;
import com.astore.services.implement.UserServices;
import com.astore.tool.CheckEmail;
import com.astore.tool.HashPassword;
import com.astore.tool.SendMail;

import javax.mail.Session;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UserRegistration", value = "/userRegistration")
public class UserRegistration extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String userName = "chưa có thông tin";
        String fullName = request.getParameter("fullName-sign-up");
        String emailOrPhone = request.getParameter("email-sign-up");
        String emailRegister="chưa có thông tin";
        String phoneRegister="chưa có thông tin";
        String gender ="chưa có thông tin";
        String birthday ="2001/01/01";
        String address ="chưa có thông tin";
        String avatar="chưa có thông tin";
        String pwd = request.getParameter("password-sign-up");
        if (CheckEmail.getInstance().checkEmail(emailOrPhone)){
            emailRegister=emailOrPhone;
        }
        else{
            phoneRegister=emailOrPhone;
        }

        String userMail = "19130137@st.hcmuaf.edu.vn";
        String nameFrom ="ASTORE";
        String passUserMail= "xrjlbwixmthlrube";
      if (UserServices.getInstance().checkUserExist(emailOrPhone)){
       String errorRegistration= "<div class=\"error-login-user\"><div class=\"img-error-login\"><i class=\"far fa-times-circle\"></i></div>\n" +
            "              <div class=\"text-error-login\">\n" +
            "                <p>Tài khoản của bạn đã tồn tại. Xin vui lòng dùng tài khoản khác để đăng ký</p>\n" +
            "              </div>" +
            " </div>";
    request.setAttribute("errorRegistration",errorRegistration);
    request.setAttribute("classRightRegister","right-panel-active");
    request.getRequestDispatcher("/view/client/sign_user/signIn.jsp").forward(request,response);
        }
           else {
               UserServices.getInstance().insertUser(new User(0,userName,fullName,emailRegister,gender,birthday,phoneRegister,address,avatar, HashPassword.getInstance().hashPassword(pwd), null));
               String subjectMail = "Ma Xac Thuc";
               String codeOTP = SendMail.getInstance().ranDomOTP();
               HttpSession ss = request.getSession();
               ss.setAttribute("OTPRegister",codeOTP);
               ss.setAttribute("emailRegister",emailOrPhone);
               String messSendMail =codeOTP+" la ma xac thuc OTP dang ky tai khoan ASTORE. De tranh bi mat tien, tuyet doi KHONG chia se ma nay voi bat ky ai";
          Session sessRes = SendMail.getInstance().loginMail(userMail,passUserMail);
          if (CheckEmail.getInstance().checkEmail(emailOrPhone)){
              SendMail.getInstance().sendMailTo(sessRes,userMail,nameFrom,emailOrPhone,subjectMail,messSendMail);
          }
          if (CheckEmail.getInstance().checkEmail(emailOrPhone)){

          }
          response.sendRedirect("view/client/sign_user/verificationCreate.jsp");
}
    }
}

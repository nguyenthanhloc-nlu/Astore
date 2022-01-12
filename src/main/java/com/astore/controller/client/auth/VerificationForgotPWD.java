package com.astore.controller.client.auth;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "VerificationForgotPWD", value = "/verificationForgotPWD")
public class VerificationForgotPWD extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
String OTPForgotPWDInput = request.getParameter("OTPForgetPWD-input");
HttpSession ss = request.getSession();
String OTPForgotPWDsesion =ss.getAttribute("OTPForgotPWD").toString();
System.out.println(OTPForgotPWDInput+" ; "+OTPForgotPWDsesion);
if (OTPForgotPWDInput.equals(OTPForgotPWDsesion)){
    response.sendRedirect("view/client/sign_user/setpwd.jsp");
}
else {
    request.setAttribute("fromMessErrorOTPForgotPWD","from-mess-error-otp");
    request.setAttribute("errorVerificationOTPForgotPWD", "Mã xác thực không đúng. vui lòng nhập lại");
    request.getRequestDispatcher("/view/client/sign_user/verificationCode.jsp").forward(request,response);
    System.out.println("errorVerificationOTP");
}
    }
}

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Đặt lại mật khẩu</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
    />
    <link
            rel="stylesheet"
            href="<%=request.getContextPath()%>/view/client/assets/fontawesome-free-5.15.4-web/css/all.min.css"
    />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/resetPass.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/sign.css" />
  </head>
<style>
  #from-mess-error-otp{
  visibility: inherit;
}</style>

  <body>
    <div class="container-sign">
      <div class="container-heder">
        <div class="img-logo">
          <a href="<%=request.getContextPath()%>/index.jsp">
            <img src="<%=request.getContextPath()%>/view/client/assets/images/logo2.png" alt="Astore" width="150px"
          /></a>
        </div>
        <p class="tille-sign" id="tilte-text">Đặt lại mật khẩu</p>
        <p class="sp-sign">
          <a href="<%=request.getContextPath()%>/view/client/help.jsp" style="text-decoration: none; color: white"
            >Trợ giúp?</a
          >
        </p>
      </div>
      <div class="container-section">
        <div class="container-reset" id="container-verification">
          <div class="heder-reset" id="heder-verification">
            <div
              class="back-reset"
              id="back-verification"
              onclick="history.back()"
            >
              <i class="fas fa-chevron-left fa-2x"></i>
            </div>
            <div class="text-reset">
              <p id="text-rs">Nhập Mã Xác Minh</p>
            </div>
          </div>
          <div class="form-rs-1" style="margin:0;margin-top:70px">
            <form
              action="<%=request.getContextPath()%>/verificationForgotPWD"
              id="form-verification-forgotPWD"
              method="post"
              onsubmit="return false"
              style="margin: auto; width: 328px"
            >
              <div class="form-group">
                <input
                  onkeypress="return onlyNumberKey(event)"
                  type="text"
                  name="OTPForgetPWD-input"
                  maxlength="6"
                  class="form-reset"
                  id="verification-set-forgotPWD"
                  placeholder="Mã xác minh"
                  style="text-align: center"
                />
                <small id="${fromMessErrorOTPForgotPWD}" class="form-message">${errorVerificationOTPForgotPWD}</small>
              </div>
              <div class="resend-code">
                <p style="font-size: 15px; float: left; margin: 5px 0px;">
                  Bạn không nhận được mã?
                  <a href="<%=request.getContextPath()%>/sendMailForgotPWD" class="resend-verification" style="float:right;">Gửi lại</a>
                </p>
              </div>
              <button type="submit" class="btn-form-sign" id="next-verification-forgotPWD"  disabled>
                TIẾP THEO
              </button>
            </form>
          </div>
        </div>
      </div>
    </div>
    <script>
      function onlyNumberKey(evt) {
        var ASCIICode = evt.which ? evt.which : evt.keyCode;
        if (ASCIICode > 31 && (ASCIICode < 48 || ASCIICode > 57)) {
          return false;
        }
        return true;
      }
    </script>
    <script src="<%=request.getContextPath()%>/view/client/assets/js/script.js"></script>
    <script src="<%=request.getContextPath()%>/view/client/assets/js/verification.js"></script>
  </body>
</html>
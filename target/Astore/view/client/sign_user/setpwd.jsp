<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Đặt lại mật khẩu</title>
    <link
      rel="stylesheet"
      href="<%=request.getContextPath()%>/view/client/assets/fontawesome-free-5.15.4-web/css/all.min.css"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
    />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/resetPass.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/sign.css" />
  </head>
<style>
  #set-PWD-forgot-success{
  display: block;
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
        <div class="container-reset">
          <div class="heder-reset" id="heder-set">
            <div class="back-reset" id="back-set" onclick="history.back()">
              <i class="fas fa-chevron-left fa-2x"></i>
            </div>
            <div class="text-reset">
              <p id="text-rs">Thiết Lập Mật Khẩu</p>
            </div>
          </div>
          <div class="form-rs-1" style="margin: 66px 0px;">
            <form action="<%=request.getContextPath()%>/setForgotPWD" method="post" onsubmit="return false" id="form-set">
              <div class="form-group">
                <input
                  type="password"
                  name="password-set-forgotPWD"
                  class="form-reset"
                  id="pwd-set"
                  placeholder="Mật khẩu"
                />
                <small class="form-message"></small>
              </div>
              <p class="text-condition-set" style="margin: 5px; margin-left:-46px">
                Mật khẩu phải có độ dài từ 8-16 ký tự (bao gồm ít nhất 1 ký tự
                <br />viết hoa và 1 ký tự viết thường).
              </p>
              <button type="submit" class="btn-form-sign" id="agree-set" disabled >ĐỒNG Ý</button>
            </form>
          </div>

          <div id="popUpOverlay"></div>
          <div id="${setPWDForgotSuccess}" class="popUpBox">
            <div id="box">
              <i class="far fa-check-circle fa-3x" style="color: lime"></i>
              <p>Xin chúc mừng!</p>
              <p style="font-size: 11px">Bạn đã thiết lập lại mật khẩu thành công.</p>
              <div id="closeModal">${loginSuccessForgotPwd}</div>
            </div>
          </div>
        </div>
      </div>
    </div>
<script>   function signInNowForgotPWD(){
  document.querySelector(".popUpBox").style.display = "none";
  document.getElementById("popUpOverlay").style.display = "none";
  window.location.href = "view/client/sign_user/signIn.jsp";
  document.getElementById("pwd-set").value = "";
}</script>
    <script src="<%=request.getContextPath()%>/view/client/assets/js/script.js"></script>
    <script src="<%=request.getContextPath()%>/view/client/assets/js/setpwd.js"></script>
  </body>
</html>
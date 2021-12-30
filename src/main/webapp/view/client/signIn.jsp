<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Đăng nhập</title>

    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
    />
    <link
            rel="stylesheet"
            href="<%=request.getContextPath()%>/view/client/assets/fontawesome-free-5.15.4-web/css/all.min.css"
    />
    <link
            rel="stylesheet"
            href="<%=request.getContextPath()%>/view/client/assets/fontawesome-free-5.15.4-web/js/all.min.js"
    />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/sign.css" />
    <script src="https://code.jquery.com/jquery-latest.js"></script>

  </head>

  <body>
    <div class="container-sign">
      <div class="container-heder">
        <div class="img-logo">
          <a href="<%=request.getContextPath()%>/">
            <img src="<%=request.getContextPath()%>/view/client/assets/images/logo2.png" alt="Astore" width="150px"
          /></a>
        </div>
        <p class="tille-sign" id="tilte-text">Đăng nhập</p>
        <p class="sp-sign">
          <a href="help" style="text-decoration: none; color: white"
            >Trợ giúp?</a
          >
        </p>
      </div>
      <div class="container-section">
        <div class="container" id="container">
          <div class="form-container sign-up-container">
            <form id="form-sign-up">
              <h1 class="text-cr">Đăng Ký</h1>
              <div class="social-container">
                <a
                  onclick="openInNewTab('http:\\www.facebook.com');"
                  class="social"
                  ><i class="fab fa-facebook-f"></i
                ></a>
                <a
                  onclick="openInNewTab('https:\\accounts.google.com/');"
                  class="social"
                  ><i class="fab fa-google-plus-g"></i
                ></a>
                <a
                  onclick="openInNewTab('https:\\appleid.apple.com/');"
                  class="social"
                  ><i class="fab fa-apple"></i
                ></a>
              </div>
              <div>
                <p class="or-sign">hoặc đăng ký tài khoản</p>
              </div>
              <div class="form-group">
                <input
                  type="text"
                  name="email-sign-up"
                  id="email-sign-up-load"
                  class="form-input"
                  placeholder="Email/Số điện thoại"
                />
                <small class="form-message"></small>
              </div>
              <div class="form-group">
                <input
                  type="text"
                  name="username-sign-up"
                  id="username-sign-up-load"
                  class="form-input"
                  placeholder="Họ và tên"
                />
                <small class="form-message"></small>
              </div>
              <div class="form-group">
                <input
                  type="password"
                  name="password-sign-up"
                  id="password-sign-up-load"
                  class="form-input"
                  placeholder="Mật khẩu"
                />
                <small class="form-message"></small>
              </div>
              <div class="form-group">
                <input
                  type="password"
                  name="cf-password-sign-up"
                  id="cf-password-sign-up-load"
                  class="form-input"
                  placeholder="Xác nhận lại mật khẩu"
                />
                <small class="form-message"></small>
                <p
                  style="
                    font-size: 12px;
                    padding-bottom: 10px;
                    padding-top: 5px;
                    text-align: center;
                  "
                >
                  Bằng việc đăng ký, bạn đồng ý với AStore về các
                  <b style="color: red; font-size: 12px; font-weight: 100"
                    >điều khoản dịch vụ</b
                  >
                  &
                  <b style="color: red; font-size: 12px; font-weight: 100"
                    >chính sách bảo mật.</b
                  >
                </p>
              </div>
              <button disabled class="btn-form-sign" id="sign-up-load">
                Đăng ký
              </button>
            </form>
          </div>
          <div class="form-container sign-in-container">
            <form action="<%=request.getContextPath()%>/" id="form-sign-in">
              <h1 class="text-login">Đăng Nhập</h1>
              <div class="social-container">
                <a
                  onclick="openInNewTab('http:\\www.facebook.com');"
                  class="social"
                  ><i class="fab fa-facebook-f"></i
                ></a>
                <a
                  onclick="openInNewTab('https:\\accounts.google.com/');"
                  class="social"
                  ><i class="fab fa-google-plus-g"></i
                ></a>
                <a
                  onclick="openInNewTab('https:\\appleid.apple.com/');"
                  class="social"
                  ><i class="fab fa-apple"></i
                ></a>
              </div>
              <div><p class="or-sign">hoặc bạn đã có tài khoản</p></div>
              <div class="form-group">
                <input
                  type="text"
                  class="form-input"
                  name="email-sign-in"
                  id="email-sign-in-load"
                  placeholder="Email/Số điện thoại"
                />
                <small class="form-message"></small>
              </div>
              <div class="form-group">
                <input
                  type="password"
                  name="password-sign-in"
                  id="password-sign-in-load"
                  class="form-input"
                  placeholder="Mật khẩu"
                />
                <small class="form-message"></small>
              </div>
              <a class="forgot" href="<%=request.getContextPath()%>/view/client/resetPassword.html">Quên mật khẩu?</a>
              <%=request.getContextPath()%>/view/client
              <input id="index" value="<%=request.getContextPath()%>/">
              <button
                disabled
                type="submit"
                class="btn-form-sign"
                id="sign-in-load"
              >
                Đăng nhập
              </button>
            </form>
          </div>
          <div class="overlay-container">
            <div class="overlay">
              <div class="overlay-panel overlay-left">
                <h1>AStore xin chào!</h1>
                <p class="hello-sign">Bạn đã có tài khoản?</p>
                <button class="ghost" id="signIn">Đăng nhập</button>
              </div>
              <div class="overlay-panel overlay-right">
                <h1>AStore xin chào!</h1>
                <p class="hello-sign">Bạn mới biết đến AStore?</p>
                <button class="ghost" id="signUp">Đăng ký</button>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="footer">
        <div class="footer-container">
          <div class="row">
            <div class="footer-col-3">
              <h3>Hệ thống cửa hàng</h3>
              <ul>
                <li><a href="">Nội quy cửa hàng</a></li>
                <li><a href="">Chất lượng dịch vụ</a></li>
                <li><a href="">Xem 4 cửa hàng</a></li>
                <li><a href="">Bảo hành và đổi trả</a></li>
              </ul>
            </div>
            <div class="footer-col-3">
              <h3>Hỗ trợ khách hàng</h3>
              <ul>
                <li><a href="">Điều kiện giao dịch chung</a></li>
                <li><a href="">Hướng dẫn mua hàng online</a></li>
                <li><a href="">Chính sách giao hàng</a></li>
                <li><a href="">Hướng dẫn thanh toán</a></li>
              </ul>
            </div>
            <div class="footer-col-3">
              <h3>Về thương hiệu ASTORE</h3>
              <ul>
                <li><a href="">Giới thiệu về ASTORE</a></li>
                <li><a href="">Bán hàng doanh nghiệp</a></li>
                <li><a href="">Chính sách bảo mật thông tin</a></li>
                <li><a href="">Chính sách ưu đãi</a></li>
              </ul>
            </div>
            <div class="footer-col-3">
              <a href="<%=request.getContextPath()%>/">
                <img src="<%=request.getContextPath()%>/view/client/assets/images/logo1.png" />
              </a>
              <p>
                Trải nghiệm tốt nhất về sản phẩm và dịch vụ của Apple tới toàn
                bộ người dùng tại Việt Nam.
              </p>
            </div>
          </div>
          <hr />
          <p class="copyright">
            © 2018. Công ty AGROUP0. GPDKKD: 0303217354 do sở KH & ĐT TP.HCM cấp
            ngày 02/01/2007.
          </p>
          <p class="copyright">
            GPMXH: 238/GP-BTTTT do Bộ Thông Tin và Truyền Thông cấp ngày
            04/06/2020.
          </p>
        </div>
      </div>
    </div>
    <script src="<%=request.getContextPath()%>/view/client/assets/js/script.js"></script>
    <script></script>
  </body>
</html>

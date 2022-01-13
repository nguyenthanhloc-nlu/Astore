<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="380914326375-b0tupe4hukq70qps3gq5v74v42bo8b7c.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <title>Thông tin hóa đơn</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/account-format.css" />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
    />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/infor-order-account.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/grid-account.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/account-information.css" />
  </head>
  <style>
    .w-15 {
      width: 20% !important;
    }
    .w-10 {
      width: 15% !important;
    }
    .text-center {
      text-align: center !important;
    }
    .row {
      margin: 0;
    }
    .btn-back-order-account button:hover {
      background: whitesmoke;
    }
  </style>
  <body>
    <div class="account-container" style="background: #3e3e3f">
      <div class="header">
        <div class="container">
          <div class="navbar">
            <div class="logo">
              <a href="index.html"
                ><img src="<%=request.getContextPath()%>/view/client/assets/images/logo2.png" alt="logo" width="150px"
              /></a>
            </div>
            <nav>
              <ul id="MenuItems">
                <li><a href="products-iphone.jsp">iPhone</a></li>
                <li><a href="products-mac.jsp">Mac</a></li>
                <li><a href="products-ipad.jsp">iPad</a></li>
                <li><a href="products-watch.html">Watch</a></li>
              </ul>
            </nav>
            <div class="search-box">
              <button class="btn-search">
                <i class="fa fa-search" aria-hidden="true"></i>
              </button>
              <input
                type="text"
                class="input-search"
                placeholder="iPhone 13..."
              />
            </div>
            <a href="cart.html">
              <img src="../assets/images/cart.png" width="40px" height="40px" />
              <span class="header__cart-notice"> 3 </span>
            </a>
            <div class="account-heder" id="link-account">
              <a href="account.jsp"
                ><i class="fas fa-user-circle fa-2x" style="color: white"></i
              ></a>
            </div>
            <div class="account-heder" id="link-sign-in">
              <a href="./signIn.html">
                <i class="far fa-user-circle fa-2x" style="color: white"></i>
              </a>
            </div>
          </div>
        </div>
      </div>

      <!-- Single Products -->
      <section class="cps-section">
        <div class="cps-container">
          <div class="cps-left-col">
            <div class="block-menu">
              <div class="block-menu__item-menu">
                <a href="<%=request.getContextPath()%>/informationAccount"
                  ><div class="box-icon-cps">
                    <i class="fas fa-user-circle"></i>
                  </div>
                  <p>Tài khoản của bạn</p></a
                >
              </div>
              <div class="block-menu__item-menu">
                <a href="<%=request.getContextPath()%>/rateAccount"
                  ><div class="box-icon-cps"><i class="fas fa-medal"></i></div>
                  <p>Hạng thành viên</p></a
                >
              </div>
              <div class="block-menu__item-menu">
                <a href="<%=request.getContextPath()%>/giftAccount"
                  ><div class="box-icon-cps"><i class="fas fa-gift"></i></div>
                  <p>Ưu đãi của bạn</p></a
                >
              </div>
              <div class="block-menu__item-menu active">
                <a href="<%=request.getContextPath()%>/historyOrderAccount"
                  ><div class="box-icon-cps">
                    <i class="fas fa-history"></i>
                  </div>
                  <p>Lịch sử mua hàng</p></a
                >
              </div>
              <div id="exit-account-cps" class="block-menu__item-menu">
                <a href="#"
                  ><div class="box-icon-cps">
                    <i class="fas fa-sign-out-alt"></i>
                  </div>
                  <p>Thoát tài khoản</p></a
                >
              </div>
            </div>
          </div>
          <div id="alert-cancel-order-account" class="alert-cancel-order">
            <p>Bạn muốn thoát tài khoản?</p>
            <div class="btn-cancel-group">
              <button id="btn-cancel-account" class="btn btn-cancel">
                Không
              </button>
              <button id="btn-accept-account"
                      class="btn btn-accept">
                <a  href="<%=request.getContextPath()%>/exitsAccount" style="color: white">  Xác nhận</a>
              </button>
            </div>
          </div>
          <div id="bg-overlay-account" class="bg-overlay"></div>
          <div class="cps-right-col">
            <div>
              <section>
                <div class="account-sider-bar">
                  <aside class="sidebar">
                    <nav class="nav">
                      <ul class="nav-items">
                        <li>
                          <a href="<%=request.getContextPath()%>/informationAccount" class="nav-link">
                            <i class="fas fa-user-circle"></i>Tài Khoản của
                            bạn</a
                          >
                        </li>
                        <li>
                          <a href="<%=request.getContextPath()%>/rateAccount" class="nav-link"
                            ><i class="fas fa-medal"></i>Hạng thành viên</a
                          >
                        </li>
                        <li>
                          <a href="<%=request.getContextPath()%>/giftAccount" class="nav-link"
                            ><i class="fas fa-gift"></i>Ưu đãi của bạn</a
                          >
                        </li>
                        <li>
                          <a href="<%=request.getContextPath()%>/historyOrderAccount" class="nav-link"
                            ><i class="fas fa-history"></i>Lịch sử mua hàng</a
                          >
                        </li>
                        <li>
                          <a href="#" id="exit-account-sider" class="nav-link">
                            <i class="fas fa-sign-out-alt"></i>Thoát tài
                            khoản</a
                          >
                        </li>
                      </ul>
                      <div class="sidebar-separator"></div>
                    </nav>
                  </aside>
                  <div class="hamburger">
                    <div class="bar"></div>
                    <div class="bar"></div>
                    <div class="bar"></div>
                  </div>
                </div>
                <div class="block-manage-order" style="background: white">
                  <div class="block-manage-order__title">
                    <p>Quản lý đơn hàng</p>
                  </div>
                  <div class="container">
                    <div
                      class="row row-cart-payment row-cart-payment-1"
                      style="margin-top: 20px; border-radius: 20px"
                    >
                      <div class="l-12 m-12 c-12 col-infor-products">
                        <c:forEach var="p" items="${listProductOrder}">
                        <div class="row">
                          <div class="l-2 m-12 c-12">
                            <div class="mr-2 mb-3 mb-lg-0">
                              <img
                                src="#"
                                width="150"
                                height="150"
                                alt="apple"
                              />
                            </div>
                          </div>
                          <div class="l-7 m-12 c-12">
                            <div class="infor-prd">
                              <h2 class="media-title font-weight-semibold">
                                <a href="#">Apple ${p.name}(${p.colorName}, ${p.rom})</a>
                              </h2>
                              <p class="mt-10">
                                ${p.ram}GB RAM | (${p.sizeScreen} inch) Display ${p.frontCamera}
                                Front Camera | ${p.backCamera} Back Camera
                                Processor
                              </p>
                            </div>
                          </div>
                          <div class="l-3 m-12 c-12">
                            <h1 class="mb-0 font-weight-semibold"><fmt:parseNumber>${p.price}</fmt:parseNumber>VNĐ</h1>
                            <c:forEach var="m" items="${mapQuantilyProduct}">
                              <c:if test="${m.key==p.id}">
                                <div
                                        class="up-down-number"
                                        id="tentacles"
                                >${m.value}</div>
                              </c:if>
                            </c:forEach>
                          </div>
                        </div>
                        </c:forEach>
                      </div>
                    </div>
                  </div>

                  <div class="l-12 m-12 c-12 col-temp-price">
                    <div class="row">
                      <div class="l-2 m-6 c-12">
                        <div class="mr-2 mb-3 mb-lg-0">
                          <h2 class="f-h2-temp-price">Thành tiền</h2>
                        </div>
                      </div>
                      <div class="l-7 m-0 c-0"></div>
                      <div class="l-3 m-6 c-12">
                        <div class="mr-2 mb-3 mb-lg-0">
                          <h1 class="f-h2-temp-price">${moneyOrder}VNĐ</h1>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="btn-back-order-account">
                    <button
                      style="
                        border-radius: 10px;
                        background: lightblue;
                        height: 32px;
                      "
                    >
                      <a href="<%=request.getContextPath()%>/historyOrderAccount" style="font-size: 18px"
                        >Quay về lịch sử mua hàng</a
                      >
                    </button>
                  </div>
                </div>
              </section>
            </div>
          </div>
        </div>
      </section>
    </div>
    <script src="<%=request.getContextPath()%>/view/client/assets/js/account-information.js"></script>
    <script src="<%=request.getContextPath()%>/view/client/assets/js/account.js"></script>
    <script src="<%=request.getContextPath()%>/view/client/assets/js/icon_account.js"></script>
  </body>
</html>

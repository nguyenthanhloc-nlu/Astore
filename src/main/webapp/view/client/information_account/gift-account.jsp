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
    <title>Tài khoản</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/account-format.css" />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
    />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/account-information.css" />
  </head>

  <body>
    <div class="account-container">
      <div class="header">
        <div class="container">
          <div class="navbar">
            <div class="logo">
              <a href="<%=request.getContextPath()%>/index.jsp"
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
              <a href="<%=request.getContextPath()%>/view/client/sign_user/signIn.jsp">
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
                <a href="<%=request.getContextPath()%>/informationAccount">
                  <div class="box-icon-cps">
                    <i class="fas fa-user-circle"></i>
                  </div>
                  <p>Tài khoản của bạn</p>
                </a>
              </div>
              <div class="block-menu__item-menu">
                <a href="<%=request.getContextPath()%>/rateAccount">
                  <div class="box-icon-cps"><i class="fas fa-medal"></i></div>
                  <p>Hạng thành viên</p>
                </a>
              </div>
              <div class="block-menu__item-menu active">
                <a href="<%=request.getContextPath()%>/giftAccount">
                  <div class="box-icon-cps"><i class="fas fa-gift"></i></div>
                  <p>Ưu đãi của bạn</p>
                </a>
              </div>
              <div class="block-menu__item-menu">
                <a href="<%=request.getContextPath()%>/historyOrderAccount">
                  <div class="box-icon-cps">
                    <i class="fas fa-history"></i>
                  </div>
                  <p>Lịch sử mua hàng</p>
                </a>
              </div>
              <div id="exit-account-cps" class="block-menu__item-menu">
                <a href="#">
                  <div class="box-icon-cps">
                    <i class="fas fa-sign-out-alt"></i>
                  </div>
                  <p>Thoát tài khoản</p>
                </a>
              </div>
            </div>
          </div>
          <div id="alert-cancel-order-account" class="alert-cancel-order">
            <p>Bạn muốn thoát tài khoản?</p>
            <div class="btn-cancel-group">
              <button id="btn-cancel-account" class="btn btn-cancel">
                Không
              </button>
              <button id="btn-accept-account" class="btn btn-accept">
                <a href="<%=request.getContextPath()%>/exitsAccount" style="color: white">  Xác nhận</a>
              </button>
            </div>
          </div>
          <div id="bg-overlay-account" class="bg-overlay"></div>
          <div class="cps-right-col">
            <div class="account-sider-bar">
              <aside class="sidebar">
                <nav class="nav">
                  <ul class="nav-items">
                    <li>
                      <a href="<%=request.getContextPath()%>/informationAccount" class="nav-link">
                        <i class="fas fa-user-circle"></i>Tài Khoản của bạn</a
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
                        <i class="fas fa-sign-out-alt"></i>Thoát tài khoản</a
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
            <div class="block-smem-rank" style="padding: 35px">
              <div class="block-promotion__tab">
                <button id="btn-promotion-you" class="btn btn-promotion active">
                  Ưu đãi Smember
                </button>
                <button id="btn-gift-you" class="btn btn-gift">
                  Quà của bạn
                </button>
              </div>
              <div id="block-history-rank">
                <div class="block-promotion__smem-rank">
                  <div
                    id="btn-smem-rank"
                    class="btn-smem item-smem-rank active"
                  >
                    <i class="fas fa-user-ninja"></i>
                    <p>S-NEW</p>
                    <hr x />
                  </div>
                  <div id="btn-svip-rank" class="btn-svip item-smem-rank">
                    <i class="fas fa-user-ninja"></i>
                    <p>S-MEM</p>
                    <hr />
                  </div>
                  <div id="btn-svips-rank" class="btn-svips item-smem-rank">
                    <i class="fas fa-user-ninja"></i>
                    <p>S-VIP</p>
                    <hr />
                  </div>
                </div>
                <div class="block-promotion__content">
                  <div>
                    <div class="promotion-title">
                      <i class="fas fa-file-signature"></i>
                      <p>Điều kiện xếp hạng</p>
                    </div>
                    <div>
                      <div
                        id="promotion-content-smem"
                        class="promotion-content"
                      >
                        <div>
                          <div class="item-content">
                            <i
                              class="fas fa-user-ninja"
                              style="color: skyblue; margin-right: 10px"
                            ></i>
                            <p>
                              Tổng số tiền mua hàng tích luỹ trong vòng 12 tháng gần nhất đạt từ ${conditionNewUser} triệu đồng
                            </p>
                          </div>
                        </div>
                      </div>
                      <!---->
                      <!---->
                    </div>
                    <div>
                      <!---->
                      <div
                        id="promotion-content-svip"
                        class="promotion-content"
                        style="display: none"
                      >
                        <div>
                          <div class="item-content">
                            <i
                              class="fas fa-user-ninja"
                              style="
                                color: rgb(233, 98, 98);
                                margin-right: 10px;
                              "
                            ></i>
                            <p>
                              Tổng số tiền mua hàng tích luỹ trong vòng 12 tháng gần nhất đạt từ ${conditionMemUser} triệu đồng
                            </p>
                          </div>
                        </div>
                      </div>
                      <!---->
                    </div>
                    <div>
                      <!---->
                      <!---->
                      <div
                        id="promotion-content-svips"
                        class="promotion-content"
                        style="display: none"
                      >
                        <div>
                          <div class="item-content">
                            <i
                              class="fas fa-user-ninja"
                              style="color: #ffbe2f; margin-right: 10px"
                            ></i>
                            <p>
                              Tổng số tiền mua hàng tích luỹ trong vòng 12 tháng gần nhất đạt từ ${conditionVipUser} triệu đồng trở lên
                            </p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div>
                    <div class="promotion-title">
                      <i class="fas fa-store"></i>
                      <p>Ưu đãi mua hàng</p>
                    </div>
                    <div>
                      <div
                        id="id-promotion-content-smem"
                        class="promotion-content"
                      >
                        <div>
                          <div class="item-content">
                            <i class="fas fa-tags" style="color: #ff6c6c"></i>
                            <p>
                              Giảm thêm ${accessoryNewUser}% khi mua các sản phẩm thuộc nhóm hàng loa - tai nghe dưới 1 triệu, sạc dự phòng, củ cáp, bao da, ốp lưng, balo - túi xách
                            </p>
                          </div>
                        </div>
                        <div>
                          <div class="item-content">
                            <i class="fas fa-tags" style="color: #ff6c6c"></i>
                            <p>
                              Giảm thêm ${accessoryRemainingNewUser}% khi mua các sản phẩm thuộc nhóm hàng phụ kiện còn lại
                            </p>
                          </div>
                        </div>
                        <div>
                          <div class="item-content">
                            <i
                              class="fas fa-mobile"
                              style="
                                color: rgb(184, 192, 196);
                                margin-right: 18px;
                              "
                            ></i>
                            <p>
                              Giảm thêm ${mobileComeToLifeNewUser}% (tối đa 200.000đ) khi thực hiện thu cũ lên đời
                            </p>
                          </div>
                        </div>
                        <div>
                          <div class="item-content">
                            <i class="fas fa-gifts" style="color: red"></i>
                            <p>
                              Ưu đãi sinh nhật: Tặng phiếu mua hàng trị giá  ${giftBirthdayNewUser}đ
                            </p>
                          </div>
                        </div>
                      </div>
                      <!---->
                      <!---->
                    </div>
                    <div>
                      <!---->
                      <div
                        id="id-promotion-content-svip"
                        class="promotion-content"
                        style="display: none"
                      >
                        <div>
                          <div class="item-content">
                            <i class="fas fa-tags" style="color: #ff6c6c"></i>
                            <p>

                              Giảm thêm ${machineMemUser}% khi mua các sản phẩm máy (điện thoại, máy tính, máy tính bảng, Apple Watch)
                            </p>
                          </div>
                        </div>
                        <div>
                          <div class="item-content">
                            <i class="fas fa-tags" style="color: #ff6c6c"></i>
                            <p>
                              Giảm thêm ${accessoryMemUser}% khi mua các sản phẩm thuộc nhóm hàng loa - tai nghe dưới 1 triệu, sạc dự phòng, củ cáp, bao da, ốp lưng, balo - túi xách
                            </p>
                          </div>
                        </div>
                        <div>
                          <div class="item-content">
                            <i class="fas fa-tags" style="color: #ff6c6c"></i>
                            <p>
                              Giảm thêm ${accessoryRemainingMemUser}% khi mua các sản phẩm thuộc nhóm hàng phụ kiện còn lại
                            </p>
                          </div>
                        </div>
                        <div>
                          <div class="item-content">
                            <i
                              class="fas fa-mobile"
                              style="
                                color: rgb(184, 192, 196);
                                margin-right: 18px;
                              "
                            ></i>
                            <p>Giảm thêm ${mobileComeToLifeMemUser}% (tối đa 200.000đ) khi thực hiện thu cũ lên đời
                            </p>
                          </div>
                        </div>
                        <div>
                          <div class="item-content">
                            <i class="fas fa-gifts" style="color: red"></i>
                            <p>
                              Ưu đãi sinh nhật: Tặng phiếu mua hàng trị giá ${giftBirthdayMemUser}đ
                            </p>
                          </div>
                        </div>
                      </div>
                      <!---->
                    </div>
                    <div>
                      <!---->
                      <!---->
                      <div
                        id="id-promotion-content-svips"
                        class="promotion-content"
                        style="display: none"
                      >
                        <div>
                          <div class="item-content">
                            <i class="fas fa-tags" style="color: #ff6c6c"></i>
                            <p>
                              Giảm thêm ${machineVipUser}% khi mua các sản phẩm máy (điện thoại, máy tính, máy tính bảng, Apple Watch)
                            </p>
                          </div>
                        </div>
                        <div>
                          <div class="item-content">
                            <i class="fas fa-tags" style="color: #ff6c6c"></i>
                            <p>
                              Giảm thêm ${accessoryVipUser}% khi mua các sản phẩm thuộc nhóm hàng loa - tai nghe dưới 1 triệu, sạc dự phòng, củ cáp, bao da, ốp lưng, balo - túi xách
                            </p>
                          </div>
                        </div>
                        <div>
                          <div class="item-content">
                            <i class="fas fa-tags" style="color: #ff6c6c"></i>
                            <p>
                              Giảm thêm ${accessoryRemainingVipUser}% khi mua các sản phẩm thuộc nhóm hàng phụ kiện còn lại
                            </p>
                          </div>
                        </div>
                        <div>
                          <div class="item-content">
                            <i
                              class="fas fa-mobile"
                              style="
                                color: rgb(184, 192, 196);
                                margin-right: 18px;
                              "
                            ></i>
                            <p>
                              Giảm thêm ${mobileComeToLifeVipUser}% (tối đa 200.000đ) khi thực hiện thu cũ lên đời
                            </p>
                          </div>
                        </div>
                        <div>
                          <div class="item-content">
                            <i class="fas fa-gifts" style="color: red"></i>
                            <p>
                              Ưu đãi sinh nhật: Tặng phiếu mua hàng trị giá ${giftBirthdayVipUser}đ
                            </p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div>
                    <div class="promotion-title">
                      <i class="far fa-address-book"></i>
                      <p>Chính sách dịch vụ</p>
                      <div class="promotion-content"></div>
                      <!---->
                      <!---->
                    </div>
                    <div>
                      <!---->
                      <div class="promotion-content" style="display: none">
                        <div>
                          <div class="item-content">
                            <i
                              class="fas fa-business-time"
                              style="color: rgb(184, 192, 196)"
                            ></i>
                            <p>
                              ${servicePolicyUser}
                            </p>
                          </div>
                        </div>
                      </div>
                      <!---->
                    </div>
                    <div>
                      <!---->
                      <!---->
                      <div class="promotion-content">
                        <div>
                          <div class="item-content">
                            <i
                              class="fas fa-business-time"
                              style="color: rgb(184, 192, 196)"
                            ></i>
                            <p>
                              ${servicePolicyUser}
                            </p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div
                id="btn-gift-rank"
                class="block-gift__content"
                style="display: none"
              >
                <div class="item-content none">
                  <div class="gift-text">
                    <p class="p-3">Bạn chưa có quà tặng</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
    <!-- javascript -->
    <script>
      const btnSmem = document.getElementById("btn-smem-rank");
      const btnSvip = document.getElementById("btn-svip-rank");
      const btnSvips = document.getElementById("btn-svips-rank");
      const pSmem = document.getElementById("promotion-content-smem");
      const pSvip = document.getElementById("promotion-content-svip");
      const pSvips = document.getElementById("promotion-content-svips");
      const idpSmem = document.getElementById("id-promotion-content-smem");
      const idpSvip = document.getElementById("id-promotion-content-svip");
      const idpSvips = document.getElementById("id-promotion-content-svips");

      btnSmem.addEventListener("click", (e) => {
        e.preventDefault();
        btnSmem.className = "btn-smem item-smem-rank active";
        btnSvip.className = "btn-svip item-smem-rank";
        btnSvips.className = "btn-svips item-smem-rank";
        pSmem.style.display = "block";
        pSvip.style.display = "none";
        pSvips.style.display = "none";
        idpSmem.style.display = "block";
        idpSvip.style.display = "none";
        idpSvips.style.display = "none";
      });
      btnSvip.addEventListener("click", (e) => {
        e.preventDefault();
        btnSmem.className = "btn-smem item-smem-rank";
        btnSvip.className = "btn-svip item-smem-rank active";
        btnSvips.className = "btn-svips item-smem-rank";
        pSmem.style.display = "none";
        pSvip.style.display = "block";
        pSvips.style.display = "none";
        idpSmem.style.display = "none";
        idpSvip.style.display = "block";
        idpSvips.style.display = "none";
      });
      btnSvips.addEventListener("click", (e) => {
        e.preventDefault();
        btnSmem.className = "btn-smem item-smem-rank";
        btnSvip.className = "btn-svip item-smem-rank";
        btnSvips.className = "btn-svips item-smem-rank active";
        pSmem.style.display = "none";
        pSvip.style.display = "none";
        pSvips.style.display = "block";
        idpSmem.style.display = "none";
        idpSvip.style.display = "none";
        idpSvips.style.display = "block";
      });
      var SMemRank = document.getElementById("block-history-rank");
      var GiftRank = document.getElementById("btn-gift-rank");
      var btnPromotion = document.getElementById("btn-promotion-you");
      var btnGift = document.getElementById("btn-gift-you");
      btnPromotion.addEventListener("click", (e) => {
        e.preventDefault();
        btnPromotion.style.background = "skyblue";
        btnGift.style.background = "white";
        SMemRank.style.display = "block";
        GiftRank.style.display = "none";
      });
      btnGift.addEventListener("click", (e) => {
        e.preventDefault();
        btnGift.style.background = "skyblue";
        btnPromotion.style.background = "white";
        GiftRank.style.display = "block";
        SMemRank.style.display = "none";
      });
    </script>
    <script src="<%=request.getContextPath()%>/view/client/assets/js/account-information.js"></script>
    <script src="<%=request.getContextPath()%>/view/client/assets/js/icon_account.js"></script>
    <script src="<%=request.getContextPath()%>/view/client/assets/js/account.js"></script>
  </body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Nguyen Thanh Loc
  Date: 12/11/2021
  Time: 11:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
    />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>


<!-- Footer -->

<div class="footer">
    <div class="container">
        <div class="row">
            <div class="footer-col-3">
                <h3>Hệ thống cửa hàng</h3>
                <ul>
                    <li><a href="<%=request.getContextPath()%>/view/client/storeRules.html">Nội quy cửa hàng</a></li>
                    <li><a href="<%=request.getContextPath()%>/view/client/serviceQuality.html">Chất lượng dịch vụ</a></li>
                    <li><a href="<%=request.getContextPath()%>/view/client/systemStore.html">Xem 4 cửa hàng</a></li>
                    <li><a href="<%=request.getContextPath()%>/view/client/warrantyAndExchange.html">Bảo hành và đổi trả</a></li>
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
                <p>Trải nghiệm tốt nhất về sản phẩm và dịch vụ của Apple tới toàn bộ người dùng tại Việt Nam.
                </p>
            </div>
        </div>
        <hr>
        <p class="copyright"> © 2018. Công ty AGROUP0. GPDKKD: 0303217354 do sở KH & ĐT TP.HCM cấp ngày 02/01/2007.
        </p>
        <p class="copyright"> GPMXH: 238/GP-BTTTT do Bộ Thông Tin và Truyền Thông cấp ngày 04/06/2020. </p>
    </div>
</div>



<div id="help">
    <a href="<%=request.getContextPath()%>/help"><i class="far fa-question-circle"></i></a>
</div>

<!-- scroll to top -->
<button id="btn-scroll" onclick="topFunction()" title="Lên đầu trang" ><i class="fas fa-chevron-up"></i></button>
<script src="<%=request.getContextPath()%>/view/client/assets/js/format-page.js"></script>

</body>
</html>

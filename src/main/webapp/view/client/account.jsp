
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Products | RedStore</title>
    <link rel="stylesheet" href="assets/css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>

    <jsp:include page="header/header.jsp" flush="true"/>
    <!-- Single Products -->
    <div class="small-container single-product">

        <div class="row product-detail-container">

            <div class="col-2 col-2-help">
                <img src="<%=request.getContextPath()%>/view/client/assets/images/custommer/kh1.jpg" width="450px" id="ProductImg">
            </div>
            <div class="col-2 col-2-help">
                <h1 class="white name-customer">Nguyễn Văn A</h1>
                <h3 class="white "><i class="fa fa-help fa-phone-square white" aria-hidden="true"> </i> Số điện thoại:
                    0355666656
                </h3>
                <h3 class="white "><i class="fa fa-help fa-map-marker white" aria-hidden="true"> </i> Địa chỉ: Tuy An,
                    Phú Yên
                </h3>
                <h3 class="white "><i class="fa fa-help fa-calendar-check-o white" aria-hidden="true"> </i> Tham gia
                    ngày: 20/08/2021</h3>
            </div>
        </div>
    </div>

    <div class="small-container">
        <div class="small-container id-products">
            <h1 class="title title-history-order"> Lịch sử mua hàng </h1>
        </div>
    </div>

    <div class="small-container cart-page cart-container">
        <div class="cart-div">
            <table>
                <tr>
                    <th>Sản phẩm</th>
                    <th>Số lượng</th>
                    <th>Giá</th>
                </tr>
                <tr>
                    <td>
                        <div class="cart-info">
                            <img src="<%=request.getContextPath()%>/view/client/assets/images/iphone/iphone-13-red-650x650.png">
                            <div>
                                <p>iPhone 13 RED 256GB</p>
                                <small>27.990.000đ</small>
                                <br>
                                <a href="">Remove</a>
                            </div>
                        </div>
                    </td>
                    <td><input type="number" value="1"></td>
                    <td>27.990.000đ</td>
                </tr>
                <tr>
                    <td>
                        <div class="cart-info">
                            <img src="<%=request.getContextPath()%>/view/client/assets/images/iphone/iphone-13-pro-max-gold-650x650.png">
                            <div>
                                <p>iPhone 13 PRO MAX GOLD 256GB</p>
                                <small>37.990.000đ</small>
                                <br>
                                <a href="">Remove</a>
                            </div>
                        </div>
                    </td>
                    <td><input type="number" value="1"></td>
                    <td>37.990.000đ</td>
                </tr>
                <tr>
                    <td>
                        <div class="cart-info">
                            <img src="<%=request.getContextPath()%>/view/client/assets/images/iphone/iphone-13-pro-max-silver-650x650.png">
                            <div>
                                <p>iPhone 13 PRO MAX SILVER 256GB</p>
                                <small>37.990.000đ</small>
                                <br>
                                <a href="">Remove</a>
                            </div>
                        </div>
                    </td>
                    <td><input type="number" value="1"></td>
                    <td>37.990.000đ</td>
                </tr>
            </table>
            <div class="total-price">
                <table>
                    <tr>
                        <td>Tổng cộng</td>
                        <td>$200.00</td>
                    </tr>
                    <tr>
                        <td>Giảm giá</td>
                        <td>$35.00</td>
                    </tr>
                    <tr>
                        <td>Thành tiền</td>
                        <td>$230.00</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

    <!-- Footer -->
   <jsp:include page="footer/footer.jsp" flush="true"/>
    <script src="<%=request.getContextPath()%>/view/client/assets/js/account.js"></script>
</body>

</html>

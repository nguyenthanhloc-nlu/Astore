<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' rel='stylesheet'>


    <title>Astoe | Giỏ Hàng</title>

    <style>
        .mt-50 {
            margin-top: 50px
        }

        .mb-50 {
            margin-bottom: 50px
        }

        .bg-teal-400 {
            background-color: #26a69a
        }

        a {
            text-decoration: none !important
        }

        .card {
            border-radius: 20px !important;
        }
        .cart-div{
            width: 100%;
        }

        .footer h3 {
            font-size: 20px;
        }

        .footer {
            margin-top: 30px;
        }
        .delete-btn{
            background-color: #ffc107;
            /*border-color: #ffc107;*/
            display: inline-block;
            font-weight: 400;
            color: #212529;
            text-align: center;
            vertical-align: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            border: 1px solid transparent;
            padding: .375rem .75rem;
            font-size: 1rem;
            line-height: 1.5;
            border-radius: .25rem;
            transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
        }


    </style>


</head>

<body>
<jsp:include page="./header/header.jsp" flush="true"/>

<div class="small-container">
    <div class="small-container id-products">
        <h1 class="title"> Giỏ hàng </h1>
    </div>
</div>
<div class="small-container" style="width: 85%; ">
    <div class="d-flex justify-content-center mt-50 mb-50 cart-page cart-container">
        <div class="cart-div">
            <div class="row">
                <div class="col-md-12">
                    <div class="card card-body">

                        <div class="card card-body mt-3">
                            <div class="media align-items-center align-items-lg-start text-center text-lg-left flex-column flex-lg-row">
                                <div class="mr-2 mb-3 mb-lg-0"><img
                                        src="https://cdn.tgdd.vn/Products/Images/42/228744/s16/iphone-12-promax-golden-1-650x650.png"
                                        width="100" height="100" alt=""></div>
                                <div class="media-body">
                                    <h6 class="media-title font-weight-semibold"><a href="#" data-abc="true">Apple
                                        iPhone 12 Pro Max (Gold, 64 GB)</a></h6>
                                    <h6 class="mb-0 font-weight-semibold">36.990.000₫</h6>
                                    <div style="color: yellow"><i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
                                            class="fa fa-star"></i>
                                        <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <div class="mt-3 mt-lg-0 ml-lg-3">
                                    <button type="button" class="delete-btn btn-warning text-white">Xóa</button>
                                </div>
                            </div>
                        </div>

                        <div class="card card-body mt-3">
                            <div class="media align-items-center align-items-lg-start text-center text-lg-left flex-column flex-lg-row">
                                <div class="mr-2 mb-3 mb-lg-0"><img
                                        src="https://cdn.tgdd.vn/Products/Images/42/228744/s16/iphone-12-promax-golden-1-650x650.png"
                                        width="100" height="100" alt=""></div>
                                <div class="media-body">
                                    <h6 class="media-title font-weight-semibold"><a href="#" data-abc="true">Apple
                                        iPhone 12 Pro Max (Gold, 64 GB)</a></h6>
                                    <h6 class="mb-0 font-weight-semibold">36.990.000₫</h6>
                                    <div style="color: yellow"><i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
                                            class="fa fa-star"></i>
                                        <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                                    </div>
                                </div>

                                <div class="mt-3 mt-lg-0 ml-lg-3">
                                    <button type="button" class="delete-btn btn-warning text-white">Xóa</button>
                                </div>
                            </div>
                        </div>

                        <div class="total-price mt-50">
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
                                <tr>
                                    <td></td>
                                    <td ><a href="payment" class="btn-thanh-toan">Mua Ngay</a></td>
                                </tr>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Cart items details -->

<!-- Footer -->
<jsp:include page="footer/footer.jsp" flush="true"/>

<script src="<%=request.getContextPath()%>/view/client/assets/js/cart.js"></script>

</body>

</html>

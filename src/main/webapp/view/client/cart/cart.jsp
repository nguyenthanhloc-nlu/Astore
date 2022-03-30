<%--
  Created by IntelliJ IDEA.
  User: iamva
  Date: 21/03/2022
  Time: 11:29 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/grid copy.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/header-n-footer.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/cart.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<jsp:include page="/view/client/header/header.jsp"></jsp:include>

<div class="cart-payment cart-payment-1">
    <div class="my-container" style="background: transparent; max-width: 690px;">
        <div class="my-row row-cart-payment row-cart-payment-1">
            <div class="my-l-12 my-m-12 my-c-12 col-infor-products col-infor-customer">
                <div class="my-row a-product" style="margin-bottom: 20px;">
                    <div class="my-l-2 my-m-2 my-c-2">
                        <div class="my-row">
                            <img src="https://cdn.tgdd.vn/Products/Images/42/228744/s16/iphone-12-promax-golden-1-650x650.png"
                                 alt="" style="max-width: 100%;">
                        </div>
                        <div class="my-row">
                            <div class="my-l-12 my-m-12 my-c-12" style="margin-bottom: 10px;">
                                <button type="button" class="btn-del">
                                    <i class="icon-del">xóa</i>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="my-l-1 my-m-1 my-c-3">
                    </div>
                    <div class="my-l-5 my-m-5 my-c-6" style=" display: flex; ">
                        <div class="my-row"
                             style="display: flex; flex-direction: column; justify-content: center; align-items: flex-start;">
                            <div>
                                <h4 style="margin-top: 10px;"> iPhone 13 Pro Max </h4>
                            </div>

                            <div>
                                <h5>512GB</h5>
                            </div>
                        </div>
                    </div>
                    <div class="my-l-3 my-m-3 my-c-3" style="display: flex;">
                        <div class="my-row" style="align-items:  center;">
                            <h4>36.990.000₫</h4>
                        </div>
                    </div>
                    <div class="my-l-1 my-m-1 my-c-1" style="display: flex;">
                        <div class="my-row" style="align-items:  center;">
                            <input class="up-down-number" type="number" id="tentacles" name="tentacles" min="0"
                                   max="100000" value="1">
                        </div>
                    </div>
                </div>

                <div class="my-row a-product" style="margin-top: 30px;">
                    <div class="my-l-3 my-m-3 my-c-3">
                        <h4 style="text-align: left;">Tạm tính </h4>
                    </div>
                    <div class="my-l-6 my-m-6 my-c-6">
                    </div>
                    <div class="my-l-3 my-m-3 my-c-3">
                        <h4>Tạm tính </h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="cart-payment  cart-payment-2" style="margin-top: 2px;">
    <div class="my-container" style="background: transparent; max-width: 690px;">
        <div class="my-row row-cart-payment row-cart-payment-2">
            <div class="my-l-12 my-m-12 my-c-12 col-infor-customer text-align-left">
                <h3>Thông tin khách hàng</h3>
            </div>
            <div class="my-l-12 my-m-12 my-c-12 col-infor-customer">
                <div class="my-row">
                    <div class="my-col my-l-4 my-m-4 my-c-6">
                        <form action="" class="text-align-left form-radio">
                            <div class="my-row">
                                <div class="my-col my-l-6 my-m-6 my-c-6">
                                    <input type="radio" id="" name="sex" value="Nam">
                                    <label for="" style="font-size: 18px;">Anh</label>
                                </div>
                                <div class="my-col my-l-6 my-m-6 my-c-6">
                                    <input type="radio" id="age1" name="sex" value="Nữ">
                                    <label for="" style="font-size: 18px;">Chị</label>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="my-col my-l-8 my-m-8 my-c-6">
                    </div>
                </div>
            </div>
            <div class="my-l-12 my-m-12 my-c-12 col-infor-customer">
                <form action="">
                    <div class="my-row" style="margin-bottom: 20px;">
                        <div class="my-col my-l-6 my-m-6 my-c-12 col-input-form">
                            <input class="input-chung" type="text" id="name" name="name"
                                   placeholder="Họ và tên"><br>
                        </div>
                        <div class="my-col my-l-6 my-m-6 my-c-12 col-input-form">
                            <input class="input-chung" type="tel" id="name" name="tel"
                                   placeholder="Số điện thoại"><br>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="cart-payment  cart-payment-3" style="margin-top: 3px;">
    <div class="my-container" style="background: transparent; max-width: 690px;">
        <div class="my-row row-cart-payment row-cart-payment-3">
            <div class="my-l-12 my-m-12 my-c-12 col-infor-customer text-align-left">
                <h3>Thông tin giao hàng</h3>
            </div>
            <div class="my-l-12 my-m-12 my-c-12 col-infor-customer">
                <div class="my-row">
                    <div class="my-col my-l-10 my-m-12 my-c-12">
                        <form action="" class="text-align-left">
                            <div class="my-row">
                                <div class="my-col my-l-6 my-m-6 my-c-6" style="text-align: left;">
                                    <input type="radio">
                                    <label for="age1" style="font-size: 18px;">Giao tận nơi</label>
                                </div>
                                <div class="my-col my-l-6 my-m-6 my-c-6" style="text-align: left;">
                                    <input type="radio">
                                    <label for="age1" style="font-size: 18px;">Nhận tại cửa hàng</label>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="my-col my-l-4 my-m-0 my-c-0">
                    </div>
                </div>
            </div>
            <div class="my-l-12 my-m-12 my-c-12 col-infor-customer">
                <form action="" class="form-tinh-thanh">
                    <div class="my-row">
                        <div class="my-col my-l-6 my-m-6 my-c-12 col-input-form">
                            <select class="input-chung" name="calc_shipping_provinces" required="">
                                <option value="">Tỉnh / Thành phố</option>
                            </select>
                        </div>
                        <div class="my-col my-l-6 my-m-6 my-c-12 col-input-form">
                            <select class="input-chung" name="calc_shipping_district" required="">
                                <option value="">Quận / Huyện</option>
                            </select>
                        </div>
                        <div class="my-col my-l-6 my-m-6 my-c-12 col-input-form">
                            <input class="input-chung" type="text" id="address" name="calc_shipping_district"
                                   placeholder="Xã"><br>
                        </div>
                        <div class="my-col my-l-6 my-m-6 my-c-12 col-input-form">
                            <input class="input-chung" type="text" name="calc_shipping_district"
                                   placeholder="Số nhà, tên đường"><br>
                        </div>
                    </div>
                </form>
            </div>

            <div class="my-l-12 my-m-12 my-c-12 col-temp-price col-infor-customer">
                <div class="my-row a-product" style="margin-top: 30px;">
                    <div class="my-l-3 my-m-3 my-c-3">
                        <h3 style="text-align: left;">Tạm tính </h3>
                    </div>
                    <div class="my-l-6 my-m-6 my-c-6">
                    </div>
                    <div class="my-l-3 my-m-3 my-c-3">
                        <h3 style="text-align: right; color: red;">Tạm tính </h3>
                    </div>
                </div>
            </div>
            <div class="my-l-12 my-m-12 my-c-12" style="margin-bottom: 20px;">
                <button class="button-order">ĐẶT HÀNG</button>
            </div>
        </div>
    </div>
</div>


<jsp:include page="/view/client/footer/footer.jsp"></jsp:include>


<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
<script src='https://cdn.jsdelivr.net/gh/vietblogdao/js/districts.min.js'></script>
<script>
    if (address_2 = localStorage.getItem('address_2_saved')) {
        $('select[name="calc_shipping_district"] option').each(function () {
            if ($(this).text() == address_2) {
                $(this).attr('selected', '')
            }
        })
        $('input.billing_address_2').attr('value', address_2)
    }
    if (district = localStorage.getItem('district')) {
        $('select[name="calc_shipping_district"]').html(district)
        $('select[name="calc_shipping_district"]').on('change', function () {
            var target = $(this).children('option:selected')
            target.attr('selected', '')
            $('select[name="calc_shipping_district"] option').not(target).removeAttr('selected')
            address_2 = target.text()
            $('input.billing_address_2').attr('value', address_2)
            district = $('select[name="calc_shipping_district"]').html()
            localStorage.setItem('district', district)
            localStorage.setItem('address_2_saved', address_2)
        })
    }
    $('select[name="calc_shipping_provinces"]').each(function () {
        var $this = $(this),
            stc = ''
        c.forEach(function (i, e) {
            e += +1
            stc += '<option value=' + e + '>' + i + '</option>'
            $this.html('<option value="">Tỉnh / Thành phố</option>' + stc)
            if (address_1 = localStorage.getItem('address_1_saved')) {
                $('select[name="calc_shipping_provinces"] option').each(function () {
                    if ($(this).text() == address_1) {
                        $(this).attr('selected', '')
                    }
                })
                $('input.billing_address_1').attr('value', address_1)
            }
            $this.on('change', function (i) {
                i = $this.children('option:selected').index() - 1
                var str = '',
                    r = $this.val()
                if (r != '') {
                    arr[i].forEach(function (el) {
                        str += '<option value="' + el + '">' + el + '</option>'
                        $('select[name="calc_shipping_district"]').html('<option value="">Quận / Huyện</option>' + str)
                    })
                    var address_1 = $this.children('option:selected').text()
                    var district = $('select[name="calc_shipping_district"]').html()
                    localStorage.setItem('address_1_saved', address_1)
                    localStorage.setItem('district', district)
                    $('select[name="calc_shipping_district"]').on('change', function () {
                        var target = $(this).children('option:selected')
                        target.attr('selected', '')
                        $('select[name="calc_shipping_district"] option').not(target).removeAttr('selected')
                        var address_2 = target.text()
                        $('input.billing_address_2').attr('value', address_2)
                        district = $('select[name="calc_shipping_district"]').html()
                        localStorage.setItem('district', district)
                        localStorage.setItem('address_2_saved', address_2)
                    })
                } else {
                    $('select[name="calc_shipping_district"]').html('<option value="">Quận / Huyện</option>')
                    district = $('select[name="calc_shipping_district"]').html()
                    localStorage.setItem('district', district)
                    localStorage.removeItem('address_1_saved', address_1)
                }
            })
        })
    })</script>
</body>
</html>

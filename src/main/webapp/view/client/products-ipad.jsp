<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ASTORE | Ipad</title>
    <link rel="icon" href="view/client/assets/images/ipad/ipad3.png" type="image/x-icon" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>

    <jsp:include page="header/header.jsp" flush="true"/>
    <div class="slide ">
        <div class="small-container">
            <div class="row slide-iphone">
                <a href=""> <img src="view/client/assets/images/slide/slideipad.png"></a>
            </div>
        </div>
    </div>

    <!-- All Products -->
    <!-- All Products -->

    <div class="small-container">
        <div class="row row-2">
            <div class="product-titles">
                <a href="">
                    <h4 class="white product-titles">Tất cả</h4>
                </a>
                <a href="">
                    <h4 class="white product-titles">iPad Pro M1</h4>
                </a>
                <a href="">
                    <h4 class="white product-titles">iPad Pro</h4>
                </a>
                <a href="">
                    <h4 class="white product-titles">iPad Air</h4>
                </a>
                <a href="">
                    <h4 class="white product-titles">iPad 10.2 inch</h4>
                </a>
                <a href="">
                    <h4 class="white product-titles">iPad Mini</h4>
                </a>
            </div>

            <select>
                <option>Sắp xếp theo</option>
                <option>Mới ra mắt</option>
                <option>Bán chạy</option>
                <option>Giá thấp đến cao</option>
                <option>Giá cao đến thấp</option>
            </select>
        </div>


        <div class="small-container id-products">
            <h1 class="title"> <i class="fa fa-apple" aria-hidden="true"></i> Ipad</h1>
                <div class="row">
                    <c:forEach items="${ipad}" var="p">
                        <div class="col-4 col-product">
                            <a href="product?id=${p.id}">
                                <img src="${p.listPhotoUrl.get(0)}">
                                <h4>${p.name} ${p.rom}GB</h4>
                                <p>
                                    <fmt:setLocale value="vi_VN"/>
                                    <fmt:formatNumber value="${p.price}" type="currency"/>
                                </p>
                                <a href="#" class="add-to-cart">Thêm vào giỏ hàng</a>
                                <span class="product-sale-rate">-<fmt:formatNumber value = "${p.saleRate}" type = "number"/>%</span>
                            </a>
                        </div>
                    </c:forEach>
                </div>
        </div>

        <div class="page-btn">
            <span class="page-active">1</span>
            <span>2</span>
            <span>3</span>
            <span>4</span>
            <span>5</span>
            <span>6</span>
            <span>&#8594;</span>
        </div>
    </div>

    <!-- Footer -->
   <jsp:include page="footer/footer.jsp" flush="true"/>
    <!-- javascript -->

    <script src="view/client/assets/js/products-ipad.js"></script>
</body>

</html>

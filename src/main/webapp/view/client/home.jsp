<%@ page import="com.astore.model.Product" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ASTORE</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/product-range.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/grid copy.css">
</head>

<body>

<jsp:include page="/view/client/header/header.jsp"></jsp:include>
<jsp:include page="/view/client/slider/slider.jsp"></jsp:include>

<div class="product-range" style="margin-top: 50px;">
    <div class="my-container">
        <div class="my-row">
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <div class="title-product-range">
                    <h1 style="color: white; margin: 20px;">DÒNG SẢN PHẨM</h1>
                </div>
            </div>
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <div class="my-row">
                    <div class="my-col my-l-3 my-m-3 my-c-6 item-products">
                        <a href="<%=request.getContextPath()%>/Product-iphone" style="text-decoration: none;">
                            <div class="my-col my-l-12 my-m-12 my-c-12">
                                <div class="my-row">
                                    <div class="my-col my-l-12 my-m-12 my-c-12 item-products">
                                        <img src="${iphone.get(2).listPhotoUrl.get(0)}" style="max-width: 160px;">
                                    </div>
                                    <div class="my-col my-l-12 my-m-12 my-c-12 item-products">
                                        <h4 style="margin-top: 10px;">iPhone</h4>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="my-col my-l-3 my-m-3 my-c-6 item-products">
                        <a href="<%=request.getContextPath()%>/Product-mac" style="text-decoration: none;">
                            <div class="my-col my-l-12 my-m-12 my-c-12">
                                <div class="my-row">
                                    <div class="my-col my-l-12 my-m-12 my-c-12 item-products">
                                        <img src="${mac.get(2).listPhotoUrl.get(0)}" style="max-width: 160px;">
                                    </div>
                                    <div class="my-col my-l-12 my-m-12 my-c-12 item-products">
                                        <h4 style="margin-top: 10px; text-decoration: none;">Mac</h4>
                                    </div>
                                </div>

                            </div>
                        </a>
                    </div>

                    <div class="my-col my-l-3 my-m-3 my-c-6 item-products">
                        <a href="<%=request.getContextPath()%>/Product-ipad" style="text-decoration: none;">
                            <div class="my-col my-l-12 my-m-12 my-c-12">
                                <div class="my-row">
                                    <div class="my-col my-l-12 my-m-12 my-c-12 item-products">
                                        <img src="${ipad.get(2).listPhotoUrl.get(0)}" style="max-width: 160px;">
                                    </div>
                                    <div class="my-col my-l-12 my-m-12 my-c-12 item-products">
                                        <h4 style="margin-top: 10px; text-decoration: none;">iPad</h4>
                                    </div>
                                </div>

                            </div>
                        </a>
                    </div>
                    <div class="my-col my-l-3 my-m-3 my-c-6 item-products">
                        <a href="<%=request.getContextPath()%>/Product-watch" style="text-decoration: none;">
                            <div class="my-col my-l-12 my-m-12 my-c-12">
                                <div class="my-row">
                                    <div class="my-col my-l-12 my-m-12 my-c-12 item-products">
                                        <img src="${watch.get(2).listPhotoUrl.get(0)}" style="max-width: 160px;">
                                    </div>
                                    <div class="my-col my-l-12 my-m-12 my-c-12 item-products">
                                        <h4 style="margin-top: 10px; text-decoration: none;">Watch</h4>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="product-range" style="margin-top: 50px;">
    <div class="my-container">
        <div class="my-row">
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <div class="title-product-range">
                    <h1 style="color: white; margin: 20px;">
                        <i class="fa fa-apple" aria-hidden="true" style="margin-right: 15px;"></i> iPhone
                    </h1>
                </div>
            </div>
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <div class="my-row">
                    <c:forEach items="${iphone}" var="iphone">
                        <div class="my-col my-l-3 my-m-3 my-c-6 item-products">
                            <a href="product?id=${iphone.id}" style="text-decoration: none;">
                                <div class="my-col my-l-12 my-m-12 my-c-12">
                                    <div class="my-row">
                                        <div class="my-col my-l-12 my-m-12 my-c-12">
                                            <a href="" class="component" style="text-decoration: none;"> <img
                                                    src="${iphone.listPhotoUrl.get(0)}" style="max-width: 160px;">
                                            </a>
                                            <span class="product-sale-rate">
                                                    <p style="margin: 0px; padding: 5px;">
                                                     ${"-"} <fmt:formatNumber value="${iphone.saleRate}"
                                                                              type="number"/> ${"%"}
                                                    </p>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="my-row">
                                        <div class="my-col my-l-12 my-m-12 my-c-12">
                                            <a href="" class="component" style="text-decoration: none;">
                                                <h5 style="margin-top: 10px">${iphone.name} ${iphone.rom}GB</h5>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="my-row">
                                        <div class="my-col my-l-12 my-m-12 my-c-12">
                                            <a href="" class="component" style="text-decoration: none;">
                                                <h4>
                                                    <fmt:setLocale value="vi_VN"/>
                                                    <fmt:formatNumber value="${iphone.price}" type="currency"/>
                                                </h4>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="my-row">
                                        <div class="my-col my-l-12 my-m-12 my-c-12">
                                            <a href="" class="add-to-cart" style="text-decoration: none;">
                                                <h6>
                                                    Thêm vào giỏ hàng
                                                </h6>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="product-range" style="margin-top: 50px;">
    <div class="my-container">
        <div class="my-row">
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <div class="title-product-range">
                    <h1 style="color: white; margin: 20px;">
                        <i class="fa fa-apple" aria-hidden="true" style="margin-right: 15px;"></i> Watch
                    </h1>
                </div>
            </div>
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <div class="my-row">
                    <c:forEach items="${mac}" var="mac">
                        <div class="my-col my-l-3 my-m-3 my-c-6 item-products">
                            <a href="product?id=${mac.id}" style="text-decoration: none;">
                                <div class="my-col my-l-12 my-m-12 my-c-12">
                                    <div class="my-row">
                                        <div class="my-col my-l-12 my-m-12 my-c-12">
                                            <a href="" class="component" style="text-decoration: none;"> <img
                                                    src="${mac.listPhotoUrl.get(0)}" style="max-width: 160px;">
                                            </a>
                                        </div>
                                        <span class="product-sale-rate">
                                                    <p style="margin: 0px; padding: 5px;">
                                                     ${"-"} <fmt:formatNumber value="${mac.saleRate}"
                                                                              type="number"/> ${"%"}
                                                    </p>
                                                </span>
                                    </div>
                                    <div class="my-row">
                                        <div class="my-col my-l-12 my-m-12 my-c-12">
                                            <a href="" class="component" style="text-decoration: none;">
                                                <h6 style="margin-top: 10px">${mac.name}</h6>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="my-row">
                                        <div class="my-col my-l-12 my-m-12 my-c-12">
                                            <a href="" class="component" style="text-decoration: none;">
                                                <h6 style="margin-top: 10px">${mac.rom}GB</h6>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="my-row">
                                        <div class="my-col my-l-12 my-m-12 my-c-12">
                                            <a href="" class="component" style="text-decoration: none;">
                                                <h5 style="margin-top: 10px"></h5>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="my-row">
                                        <div class="my-col my-l-12 my-m-12 my-c-12">
                                            <a href="" class="component" style="text-decoration: none;">
                                                <h4>
                                                    <fmt:setLocale value="vi_VN"/>
                                                    <fmt:formatNumber value="${mac.price}" type="currency"/>
                                                </h4>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="my-row">
                                        <div class="my-col my-l-12 my-m-12 my-c-12">
                                            <a href="" class="add-to-cart" style="text-decoration: none;">
                                                <h6>
                                                    Thêm vào giỏ hàng </h6>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="product-range" style="margin-top: 50px;">
    <div class="my-container">
        <div class="my-row">
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <div class="title-product-range">
                    <h1 style="color: white; margin: 20px;">
                        <i class="fa fa-apple" aria-hidden="true" style="margin-right: 15px;"></i> iPad
                    </h1>
                </div>
            </div>
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <div class="my-row">
                    <c:forEach items="${ipad}" var="ipad">
                        <div class="my-col my-l-3 my-m-3 my-c-6 item-products">
                            <a href="product?id=${ipad.id}" style="text-decoration: none;">
                                <div class="my-col my-l-12 my-m-12 my-c-12">
                                    <div class="my-row">
                                        <div class="my-col my-l-12 my-m-12 my-c-12">
                                            <a href="" class="component"
                                               style="text-decoration: none; margin-top: 10px;">
                                                <img src="${ipad.listPhotoUrl.get(0)}" style="max-width: 160px;" alt="">
                                            </a>
                                            <span class="product-sale-rate">
                                                    <p style="margin: 0px; padding: 5px;">
                                                     ${"-"} <fmt:formatNumber value="${ipad.saleRate}"
                                                                              type="number"/> ${"%"}
                                                    </p>
                                                </span>
                                        </div>
                                    </div>
                                    <div class="my-row">
                                        <div class="my-col my-l-12 my-m-12 my-c-12">
                                            <a href="" class="component" style="text-decoration: none;">
                                                <h5 style="margin-top: 10px">${ipad.name} ${ipad.rom}GB</h5>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="my-row">
                                        <div class="my-col my-l-12 my-m-12 my-c-12">
                                            <a href="" class="component" style="text-decoration: none;">
                                                <h4>
                                                    <fmt:setLocale value="vi_VN"/>
                                                    <fmt:formatNumber value="${ipad.price}" type="currency"/>
                                                </h4>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="my-row">
                                        <div class="my-col my-l-12 my-m-12 my-c-12">
                                            <a href="" class="add-to-cart" style="text-decoration: none;">
                                                <h6>
                                                    Thêm vào giỏ hàng
                                                </h6>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="product-range" style="margin-top: 50px;">
    <div class="my-container">
        <div class="my-row">
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <div class="title-product-range">
                    <h1 style="color: white; margin: 20px;">
                        <i class="fa fa-apple" aria-hidden="true" style="margin-right: 15px;"></i> Watch
                    </h1>
                </div>
            </div>
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <div class="my-row">
                    <c:forEach items="${watch}" var="watch">
                        <div class="my-col my-l-3 my-m-3 my-c-6 item-products">
                            <a href="product?id=${watch.id}" style="text-decoration: none;">
                                <div class="my-col my-l-12 my-m-12 my-c-12">
                                    <div class="my-row">
                                        <div class="my-col my-l-12 my-m-12 my-c-12">
                                            <a href="" class="component" style="text-decoration: none;"> <img
                                                    src="${watch.listPhotoUrl.get(0)}" style="max-width: 160px;">
                                            </a>

                                            <span class="product-sale-rate">
                                                    <p style="margin: 0px; padding: 5px;">
                                                     ${"-"} <fmt:formatNumber value="${watch.saleRate}"
                                                                              type="number"/> ${"%"}
                                                    </p>
                                                </span>
                                        </div>
                                    </div>
                                    <div class="my-row">
                                        <div class="my-col my-l-12 my-m-12 my-c-12">
                                            <a href="" class="component" style="text-decoration: none;">
                                                <h5 style="margin-top: 10px">${watch.name} ${watch.rom}GB</h5>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="my-row">
                                        <div class="my-col my-l-12 my-m-12 my-c-12">
                                            <a href="" class="component" style="text-decoration: none;">
                                                <h4>
                                                    <fmt:setLocale value="vi_VN"/>
                                                    <fmt:formatNumber value="${watch.price}" type="currency"/>
                                                </h4>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="my-row">
                                        <div class="my-col my-l-12 my-m-12 my-c-12">
                                            <a href="" class="add-to-cart" style="text-decoration: none;">
                                                <h6>
                                                    Thêm vào giỏ hàng
                                                </h6>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Footer -->
<jsp:include page="/view/client/footer/footer.jsp"></jsp:include>


</body>
</html>

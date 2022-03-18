<%@ page import="com.astore.model.Product" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Product Details</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/grid copy.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/product-details.css">
</head>
<body>
<jsp:include page="/view/client/header/header.jsp"></jsp:include>


<%--<jsp:useBean id="product" scope="request" type="com.astore.model.Product"/>--%>
<div class="my-product-detail" style="margin-top: 120px;">
    <div class="my-container-information">
        <div class="my-row">
            <div class="my-col my-l-6 my-m-6 my-c-12 my-slider-product">
                <div class="w3-content">
                    <img alt = "main-info-img" class="mySlides"
                         src="${product.listPhotoUrl.get(0)}"
                         style="width:100%;display:none; border-radius: 4px;">
                    <div class="w3-row-padding w3-section">
                        <c:forEach items="${product.listPhotoUrl}" var="img">
                            <div class="w3-col s3">
                                <img class="demo w3-opacity w3-hover-opacity-off"
                                     src="${img}"
                                     style="width:100%;cursor:pointer;  border-radius: 10px;" onclick="currentDiv(i)" alt="">
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div class="my-col my-l-6 my-m-6 my-c-12 my-infor-product">
                <div class="my-row my-row-infor-product">
                    <div class="my-col my-l-12 my-m-12 my-c-12">
                        <h3 style="font-weight: bolder; ">
                            ${product.name}
                        </h3>
                        <h3 style="font-weight: bolder;">
                            <fmt:setLocale value="vi_VN"/>
                            <fmt:formatNumber value="${product.price}" type="currency"/>
                        </h3>
                        <h4>
                            Dung lượng
                        </h4>
                    </div>
                    <div class=" my-col my-l-12 my-m-12 my-c-12">
                        <div class="my-row">
                            <div class=" my-col my-l-1 my-m-1 my-c-1 mr-bt">
                                <button type="button">128GB</button>
                            </div>
                            <div class=" my-col my-l-1 my-m-1 my-c-1 mr-bt">
                                <button type="button">256GB</button>
                            </div>
                            <div class=" my-col my-l-1 my-m-1 my-c-1 mr-bt">
                                <button type="button">512GB</button>
                            </div>
                            <div class=" my-col my-l-1 my-m-1 my-c-1 mr-bt">
                                <button type="button">1TB</button>
                            </div>
                        </div>
                    </div>
                    <div class="my-col my-l-12 my-m-12 my-c-12" style="margin-top: 10px;">
                        <h4>
                            Màu sắc
                        </h4>
                    </div>
                    <div class=" my-col my-l-12 my-m-12 my-c-12">
                        <div class="my-row">


                            <div class=" my-col my-l-1 my-m-1 my-c-1 color-bt">
                                <button type="button"
                                        style="width:45px; height:45px; border-radius:50%; background-color:  #54524f;">
                                </button>
                            </div>



                            <div class=" my-col my-l-1 my-m-1 my-c-1 color-bt">
                                <button type="button"
                                        style="width:45px; height:45px;  border-radius:50%; background-color: #a7c1d9;">
                                </button>
                            </div>
                            <div class=" my-col my-l-1 my-m-1 my-c-1 color-bt">
                                <button type="button"
                                        style="width:45px; height:45px;  border-radius:50%; background-color: #f1f2ed;">
                                </button>
                            </div>
                            <div class=" my-col my-l-1 my-m-1 my-c-1 color-bt">
                                <button type="button"
                                        style="width:45px; height:45px;   border-radius:50%; background-color: #fae7cf;">
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class=" my-col my-l-12 my-m-12 my-c-12">
                        <div class="my-row my-infor-promotion">
                            <h3 style="display: block; width: 100%;">
                                Khuyến mãi
                            </h3>
                            <h4 style="display: block;">
                                Giá và khuyến mãi dự kiến áp dụng đến 23:00 31/03
                            </h4>
                            <hr style="width: 100%; height :1px; color: white;">
                            <p>
                                * Tặng Phiếu mua hàng giảm 10% khi mua Apple Watch SE và Series 7 tại ASTORE.
                            </p>

                            <p>
                                * Phụ kiện chính hãng Apple, iPad, MacBook, Apple Watch giảm 8 - 30% khi mua kèm
                                iPhone
                            </p>
                        </div>
                    </div>

                    <div class=" my-col my-l-12 my-m-12 my-c-12">
                        <div class="my-row">
                            <div class=" my-col my-l-12 my-m-12 my-c-12 color-bt">
                                <button type="button"
                                        style="margin-top: 20px;
                                        width:100%; height:60px; border-radius:10px; background-color:  #0071e3; color: white; font-size: 23px; font-weight: bold;">
                                    Mua ngay
                                </button>
                            </div>
                        </div>
                        <div class="my-row">
                            <div class=" my-col my-l-6 my-m-6 my-c-6 t">
                                <button type="button"
                                        style="margin-top: 20px;
                                        width:100%; height:60px; border-radius:10px; background-color:  white; color: black; font-size: 18px;font-weight: bold; ">
                                    Mua trả góp
                                </button>
                            </div>
                            <div class=" my-col my-l-6 my-m-6 my-c-6 ">
                                <button type="button"
                                        style="margin-top: 20px;
                                        width:100%; height:60px; border-radius:10px; background-color:  white; color: black; font-size: 18px;font-weight: bold; ">
                                    Trả góp 0% qua thẻ
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="my-container-table">
    <div class="my-row">
        <div class="my-col my-l-12 my-m-12 my-c-12">
            <h3 style="text-align: center; font-weight: bold;">
                Thông số kỹ thuật
            </h3>
        </div>
        <div class="my-col my-l-12 my-m-12 my-c-12">
            <table>
                <tr>
                    <th>Name:</th>
                    <td>Bill Gates</td>
                </tr>
                <tr>
                    <th>Telephone:</th>
                    <td>555 77 854</td>
                </tr>
                <tr>
                    <th>Telephone:</th>
                    <td>555 77 855</td>
                </tr>
                <tr>
                    <th>Telephone:</th>
                    <td>555 77 855</td>
                </tr>
                <tr>
                    <th>Telephone:</th>
                    <td>555 77 855</td>
                </tr>
                <tr>
                    <th>Telephone:</th>
                    <td>555 77 855</td>
                </tr>
            </table>
        </div>

    </div>

    <div class="my-container-img-description">
        <div class="my-row">
            <div class="my-col my-l-12 my-m-12 my-c-12">

                <c:forEach items="${product.listPhotoUrl}" var="img">
<%--                    <c:forEach items="${product.listProductDetail}" var="img">--%>
                    <img src="%=request.getContextPath()%>/${img}" width="100%" class="demo w3-opacity w3-hover-opacity-off"  style="width:100%;">
                </c:forEach>

<%--                <img class="demo w3-opacity w3-hover-opacity-off"--%>
<%--                     src="https://cdn.tgdd.vn/Products/Images/42/250262/s16/iphone-13-pro-max-512gb-071021-083717.jpg"--%>
<%--                     style="width:100%;"> <img class="demo w3-opacity w3-hover-opacity-off"--%>
<%--                                               src="https://cdn.tgdd.vn/Products/Images/42/250262/s16/iphone-13-pro-max-512gb-071021-083717.jpg"--%>
<%--                                               style="width:100%;">--%>
<%--                <img class="demo w3-opacity w3-hover-opacity-off"--%>
<%--                     src="https://cdn.tgdd.vn/Products/Images/42/250262/s16/iphone-13-pro-max-512gb-071021-083717.jpg"--%>
<%--                     style="width:100%;">--%>
<%--                <img class="demo w3-opacity w3-hover-opacity-off"--%>
<%--                     src="https://cdn.tgdd.vn/Products/Images/42/250262/s16/iphone-13-pro-max-512gb-071021-083717.jpg"--%>
<%--                     style="width:100%;">--%>
<%--                <img class="demo w3-opacity w3-hover-opacity-off"--%>
<%--                     src="https://cdn.tgdd.vn/Products/Images/42/250262/s16/iphone-13-pro-max-512gb-071021-083717.jpg"--%>
<%--                     style="width:100%;">--%>
<%--                <img class="demo w3-opacity w3-hover-opacity-off"--%>
<%--                     src="https://cdn.tgdd.vn/Products/Images/42/250262/s16/iphone-13-pro-max-512gb-071021-083717.jpg"--%>
<%--                     style="width:100%;">--%>
<%--                <img class="demo w3-opacity w3-hover-opacity-off"--%>
<%--                     src="https://cdn.tgdd.vn/Products/Images/42/250262/s16/iphone-13-pro-max-512gb-071021-083717.jpg"--%>
<%--                     style="width:100%;">--%>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<jsp:include page="/view/client/footer/footer.jsp"></jsp:include>

<script src="<%=request.getContextPath()%>/view/client/assets/js/account.js"></script>
</body>
</html>

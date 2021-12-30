<%@ page import="com.astore.model.Product" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Astore | Xem sản phẩm</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
        .information-product-details {
            width: 100%;
            height: auto;
            padding: 35px;
        }

        h2 {
            text-align: center;
            padding: 20px 0;
        }

        .table {
            width: 100%;
        }

        table caption {
            padding: .5em 0;
        }

        .information-product-details th:last-child,
        .information-product-details td:last-child {
            text-align: left !important;
        }

        @media screen and (max-width: 767px) {
            table caption {
                display: none;
            }
        }

        .p {
            text-align: center;
            padding-top: 140px;
            font-size: 14px;
        }
    </style>
</head>

<body>

    <jsp:include page="header/header.jsp" flush="true"/>

    <!-- Single Products -->
    <div class="small-container single-product">
        <div class="row product-detail-container">
            <div class="col-2">
                <img src="${product.listPhotoUrl.get(0)}" width="100%" id="ProductImg">

                <div class="small-img-row">
                    <c:forEach items="${product.listPhotoUrl}" var="img">
                        <div class="small-img-col">
                            <img src="${img}"  class="small-img">
                        </div>
                    </c:forEach>
                </div>

            </div>
            <div class="col-2">
                <h1 class="white">${product.name}</h1>
                <h2 class="white">
                    <fmt:setLocale value="vi_VN"/>
                    <fmt:formatNumber value="${product.price}" type="currency"/>
                </h2>

                <div class="choose-rom">
                    <h4 class="white">Dung lượng</h4>
                    <c:forEach items="${rom}" var="r" >
                        <c:if test="${r.id == product.id && r.rom == product.rom}">
                            <a href="product?id=${r.id}" class="active-rom">${r.rom}GB</a>
                        </c:if>
                        <c:if test="${r.id != product.id || r.rom != product.rom}">
                            <a href="product?id=${r.id}">${r.rom}GB</a>
                        </c:if>
                    </c:forEach>
                </div>

                <div class="choose-color">
                    <c:forEach items="${color}" var="c" >

                        <c:if test="${c.id == product.id && c.colorId == product.colorId}">
                            <div id="${c.id}"  class="products-color active-color" style="background-color: #${c.colorId}" onclick="changeColor(${c.id})" ></div>
                        </c:if>
                        <c:if test="${c.id != product.id || c.colorId != product.colorId}">
                            <div id="${c.id}"  class="products-color" style="background-color: #${c.colorId}"  onclick="changeColor(${c.id})"></div>
                        </c:if>
                    </c:forEach>
                </div>

                <!-- <input type="number" value="1"> -->
                <a href="cart?id=${product.id}" class="btn" id="buy">Mua Ngay</a>
                <br>
                <p class="white"> <i class="fa fa-refresh" aria-hidden="true"></i> Hư gì đổi nấy 12 tháng tại 2834 siêu
                    thị.</p>
                <p class="white"><i class="fa fa-shield" aria-hidden="true"></i> Bảo hành chính hãng 1 năm</p>
                <p class="white"><i class="fa fa-truck" aria-hidden="true"></i> Giao hàng nhanh toàn quốc</p>
            </div>
        </div>
    </div>


    <div class="small-container single-product">
        <div class="row product-detail-container details-of-product">
            <div class="information-product-details">
                <div class="table-responsive" data-pattern="priority-columns">
                    <table class="table table-bordered table-hover">
                        <h1 style="padding: 7px 5px; background-color: #606f81; color: white; border-radius:5px">Thông số kĩ thuật</h1>
                        <br>
                        <thead></thead>
                        <tbody>
                            <c:if test = "${product.rom != null}">
                                <tr>
                                    <td>Rom</td>
                                    <td><c:out value = "${product.rom}"/> GB</td>
                                </tr>
                            </c:if>

                            <c:if test = "${product.ram != null}">
                                <tr>
                                    <td>Ram</td>
                                    <td><c:out value = "${product.ram}"/> GB</td>
                                </tr>
                            </c:if>

                            <c:if test = "${product.sizeScreen != null}">
                                <tr>
                                    <td>Kích thước màn hình</td>
                                    <td><c:out value = "${product.sizeScreen}"/></td>
                                </tr>
                            </c:if>

                            <c:if test = "${product.screenResolution != null}">
                                <tr>
                                    <td>Độ phân giải</td>
                                    <td><c:out value = "${product.screenResolution}"/></td>
                                </tr>
                            </c:if>

                            <c:if test = "${product.frontCamera != null}">
                                <tr>
                                    <td>Camera trước</td>
                                    <td><c:out value = "${product.frontCamera}"/></td>
                                </tr>
                            </c:if>

                            <c:if test = "${product.backCamera != null}">
                                <tr>
                                    <td>Camera sau</td>
                                    <td><c:out value = "${product.backCamera}"/></td>
                                </tr>
                            </c:if>
                            <tr>
                                <td>Thương hiệu</td>
                                <td>Apple</td>
                            </tr>
                            <tr>
                                <td>Xuất xứ thương hiệu</td>
                                <td>Mỹ</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>


    <div class="small-container single-product">
        <div class="row product-detail-container details-of-product">
            <div class="col">
                <c:forEach items="${product.listProductDetail}" var="img">
                    <img src="${img}" width="100%" class="">
                </c:forEach>
            </div>
        </div>
    </div>

    <div class="small-container">
        <div class="small-container id-products">
            <h1 class="title"> Sản phẩm liên quan</h1>
                <div class="row">
                   <c:forEach items="${productRelative}" var="pr">
                       <div class="col-4 col-product">
                           <a href="product?id=${pr.id}"><img src="${pr.listPhotoUrl.get(0)}"></a>
                           <h4>${pr.name}</h4>
                           <p>
                               <fmt:setLocale value="vi_VN"/>
                               <fmt:formatNumber value="${pr.price}" type="currency"/>
                           </p>
                       </div>
                   </c:forEach>
                </div>
        </div>
    </div>

    <!-- Footer -->
    <jsp:include page="footer/footer.jsp" flush="true"/>

    <!-- javascript -->
    <script src="view/client/assets/js/product_details.js"></script>

    <script>

        function changeColor(id){
            const colorChose = document.getElementById(id);
            const buy = document.getElementById('buy');
            buy.setAttribute("href", "cart?id="+id);

            const color = document.getElementsByClassName("products-color");
            for (const c of color) {
                c.setAttribute("class", "products-color");
            }

            colorChose.setAttribute("class", "products-color active-color");
        }
    </script>
</body>
</html>

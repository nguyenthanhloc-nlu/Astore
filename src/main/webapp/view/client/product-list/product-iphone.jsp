<%@ page import="com.astore.model.Product" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>APPLE | iPhone</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/product-range.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/grid copy.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/boostrap/css/bootstrap.min.css">
    <script src="<%=request.getContextPath()%>/view/client/assets/boostrap/js/bootstrap.min.js"></script>

</head>

<body>

<jsp:include page="/view/client/header/header.jsp"></jsp:include>
<jsp:include page="/view/client/slider/slider-iphone.jsp"></jsp:include>


<div class="" style="margin-top: 50px;">
    <div class="my-container">
        <div class="my-row">
            <div class="my-col my-l-9 my-m-9 my-c-9">
                <div class="my-row">
                    <div class="my-col my-l-2 my-m-2 my-c-4">
                        <a href="">
                            <h4 class="title-choice">Tất cả</h4>
                        </a>
                    </div>

                    <div class="my-col my-l-2 my-m-3 my-c-4">
                        <a href="">
                            <h4 class="title-choice">iPhone 13</h4>
                        </a>
                    </div>

                    <div class="my-col my-l-2 my-m-3 my-c-4">
                        <a href="">
                            <h4 class="title-choice">iPhone 12</h4>
                        </a>
                    </div>

                    <div class="my-col my-l-2 my-m-3 my-c-0">
                        <a href="">
                            <h4 class="title-choice">iPhone 11</h4>
                        </a>
                    </div>

                    <div class="my-col my-l-2 my-m-0 my-c-0">
                        <a href="">
                            <h4 class="title-choice">iPhone XR</h4>
                        </a>
                    </div>
                </div>
            </div>

            <div class="my-col my-l-3 my-m-3 my-c-3" style="text-align: right;">
                <select>
                    <option>Sắp xếp theo</option>
                    <option>Mới ra mắt</option>
                    <option>Bán chạy</option>
                    <option>Giá thấp đến cao</option>
                    <option>Giá cao đến thấp</option>
                </select>
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
                        <div class="my-col my-l-4 my-m-4 my-c-6 item-products">
                            <a href="" style="text-decoration: none;">
                                <a href="product?id=${iphone.id}" style="text-decoration: none;">
                                    <div class="my-col my-l-12 my-m-12 my-c-12">
                                        <div class="my-row">
                                            <div class="my-col my-l-12 my-m-12 my-c-12">
                                                <a href="" class="component" style="text-decoration: none;">
                                                    <img src="<%=request.getContextPath()%>/${iphone.listPhotoUrl.get(0)}">
                                                </a>
                                            </div>
                                        </div>
                                        <div class="my-row">
                                            <div class="my-col my-l-12 my-m-12 my-c-12">
                                                <a href="" class="component" style="text-decoration: none;">
                                                    <h4 style="margin-top: 8px">${iphone.name}</h4>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="my-row">
                                            <div class="my-col my-l-12 my-m-12 my-c-12">
                                                <a href="" class="component" style="text-decoration: none;">
                                                    <h4 style="margin-top: 8px"> ${iphone.rom}GB</h4>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="my-row">
                                            <div class="my-col my-l-12 my-m-12 my-c-12">
                                                <a href="" class="component" style="text-decoration: none;">
                                                    <p>
                                                            <fmt:setLocale value="vi_VN"/>
                                                            <fmt:formatNumber value="${iphone.price}" type="currency"/>

                                                    <p style="margin-left: 5px"> - </p>
                                                    <fmt:formatNumber value="${iphone.saleRate}" type="number"/>
                                                    <p> % </p>
                                                    </p>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="my-row">
                                            <div class="my-col my-l-12 my-m-12 my-c-12">
                                                <a href="" class="add-to-cart" style="text-decoration: none;">
                                                    Mua ngay
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                    <%--                            <span class="product-sale-rate">--%>
                                    <%--                                    <fmt:formatNumber value="${watch.saleRate}" type="number"/>--%>
                                    <%--                                </span>--%>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="/view/client/page-btn/page-btn.jsp"></jsp:include>


<!-- Footer -->
<jsp:include page="/view/client/footer/footer.jsp"></jsp:include>


</body>
</html>

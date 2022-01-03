<%@ page import="com.astore.model.Product" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ASTORE | Home</title>
    <link rel="stylesheet" href="view/client/assets/css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="icon" href="view/client/images/logotitle.png" type="image/x-icon"/>

</head>

<body>
<jsp:include page="view/client/header/header.jsp" flush="true"/>
<%--<jsp:include page="view/client/header/slide.jsp" flush="true"/>--%>
<!-- Feadtued Categories -->

<div class="small-container id-products" id="id-categories">
    <div class="row">
        <div class="col-4 col-product">
            <a href="<%=request.getContextPath()%>/Iphone">
                <img src="${iphone.get(2).listPhotoUrl.get(0)}">
                <h4>iPhone</h4>
            </a>
        </div>
        <div class="col-4 col-product">
            <a href="<%=request.getContextPath()%>/Mac">
                <img src="${mac.get(2).listPhotoUrl.get(0)}">
                <h4>Mac</h4>
            </a>
        </div>
        <div class="col-4 col-product">
            <a href="<%=request.getContextPath()%>/IPad">
                <img src="${ipad.get(2).listPhotoUrl.get(0)}">
                <h4>iPad</h4>
            </a>
        </div>
        <div class="col-4 col-product">
            <a href="<%=request.getContextPath()%>/Watch">
                <img src="${watch.get(2).listPhotoUrl.get(0)}">
                <h4>Watch</h4>
            </a>
        </div>
    </div>
</div>
<!-- Featured IPHONE Products -->


<div class="small-container id-products">
    <h1 class="title"><i class="fa fa-apple" aria-hidden="true"></i> iPhone</h1>
    <div class="row">
        <c:forEach items="${iphone}" var="p">
            <div class="col-4 col-product">
                <a href="product?id=${p.id}">
                    <img src="${p.listPhotoUrl.get(0)}">
                    <h4>${p.name} ${p.rom}GB</h4>
                    <p>
                        <fmt:setLocale value="vi_VN"/>
                        <fmt:formatNumber value="${p.price}" type="currency"/>
                    </p>
                    <a href="#" class="add-to-cart">Thêm vào giỏ hàng</a>
                    <span class="product-sale-rate">-<fmt:formatNumber value="${p.saleRate}" type="number"/>%</span>
                </a>
            </div>
        </c:forEach>
    </div>
</div>

<!-- Featured MAC Products -->

<div class="small-container id-products">
    <h1 class="title"><i class="fa fa-apple" aria-hidden="true"></i> Mac</h1>
    <div class="row">
        <c:forEach items="${mac}" var="p">
            <div class="col-4 col-product">
                <a href="product?id=${p.id}">
                    <img src="${p.listPhotoUrl.get(0)}">
                    <h4>${p.name} ${p.rom}GB</h4>
                    <p>
                        <fmt:setLocale value="vi_VN"/>
                        <fmt:formatNumber value="${p.price}" type="currency"/>
                    </p>
                    <a href="#" class="add-to-cart">Thêm vào giỏ hàng</a>
                    <span class="product-sale-rate">-<fmt:formatNumber value="${p.saleRate}" type="number"/>%</span>
                </a>
            </div>
        </c:forEach>
    </div>
</div>

<!-- Featured iPad Products -->

<div class="small-container id-products">
    <h1 class="title"><i class="fa fa-apple" aria-hidden="true"></i> iPad</h1>
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
                    <span class="product-sale-rate">-<fmt:formatNumber value="${p.saleRate}" type="number"/>%</span>
                </a>
            </div>
        </c:forEach>
    </div>
</div>


<!-- Featured apple watch Products -->

<div class="small-container id-products">
    <h1 class="title"><i class="fa fa-apple" aria-hidden="true"></i> WATCH</h1>
    <div class="row">
        <c:forEach items="${watch}" var="p">
            <div class="col-4 col-product">
                <a href="product?id=${p.id}">
                    <img src="${p.listPhotoUrl.get(0)}">
                    <h4>${p.name} ${p.rom}GB</h4>
                    <p>
                        <fmt:setLocale value="vi_VN"/>
                        <fmt:formatNumber value="${p.price}" type="currency"/>
                    </p>
                    <a href="#" class="add-to-cart">Thêm vào giỏ hàng</a>
                    <span class="product-sale-rate">-<fmt:formatNumber value="${p.saleRate}" type="number"/>%</span>
                </a>
            </div>
        </c:forEach>

    </div>
</div>


<!-- Footer -->
<jsp:include page="view/client/footer/footer.jsp" flush="true"/>


</body>

</html>

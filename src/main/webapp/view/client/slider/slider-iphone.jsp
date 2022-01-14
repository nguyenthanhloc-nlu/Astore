<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/grid%20copy.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/boostrap/css/bootstrap.min.css">
    <script src="<%=request.getContextPath()%>/view/client/assets/boostrap/js/bootstrap.min.js"></script>
</head>

<body>
<div class="my-slider-w3" style="margin-top: 80px ">
    <div class="slideshow-container">
        <div class="my-row">
            <div class="my-col my-l-12 my-m-12 my-c-0" style="">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100"
                                 src="<%=request.getContextPath()%>/view/client/assets/images/slide/slider-iphone/small/2400-600-1920x480-11.png"
                                 alt="First slide">
                        </div>
                    </div>
                </div>
            </div>
            <div class="my-col my-l-0 my-m-0 my-c-12">
                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100"
                                 src="<%=request.getContextPath()%>/view/client/assets/images/slide/slider-iphone/big/680-680-680x680-10.png"
                                 alt="First slide">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>

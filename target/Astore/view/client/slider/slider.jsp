<%--
  Created by IntelliJ IDEA.
  User: iamva
  Date: 02/01/2022
  Time: 9:13 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ASTORE | Home</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/grid%20copy.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/sl">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
          rel="stylesheet">
    <%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">--%>
    <link rel="icon" href="<%=request.getContextPath()%>/view/client/images/logotitle.png" type="image/x-icon"/>

    <%--    <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' rel='stylesheet'>--%>
    <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
    <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <link
            rel="stylesheet"
            href="<%=request.getContextPath()%>/view/client/assets/js/slider.js"
    />
</head>
<body>
<div class="my-slider-w3" style="margin-top: 50px;">
    <div class="slideshow-container">
        <div class="my-row">
            <div class="my-col my-l-12 my-m-12 my-c-0">
                <div class="mySlides1"><img src="assets/images/slide/slider2.png" style="width:100%">
                </div>

                <div class="mySlides1"><img src="assets/images/slide/slider5.png" style="width:100%">
                </div>
                <div class="mySlides1"><img src="assets/images/slide/slider6.png" style="width:100%">
                </div>
                <div class="mySlides1"><img src="assets/images/slide/slider3.png" style="width:100%">
                </div>
                <div class="mySlides1"><img src="assets/images/slide/slider4.png" style="width:100%">
                </div>

                <a class="prev" onclick="plusSlides(-1, 0)">&#10094;</a>
                <a class="next" onclick="plusSlides(1, 0)">&#10095;</a>
            </div>
            <div class="my-col my-l-0 my-m-0 my-c-12" style="margin-top:70px">
                <div class="slideshow-container">
                    <div class="mySlides2">
                        <img src="assets/images/slide/720-720-720x720-1.png" style="width:100%">
                    </div>

                    <div class="mySlides2">
                        <img src="assets/images/slide/720-720-720x720-2.png" style="width:100%">
                    </div>

                    <div class="mySlides2">
                        <img src="assets/images/slide/720-720-720x720-3.png" style="width:100%">
                    </div>

                    <div class="mySlides2">
                        <img src="assets/images/slide/720-720-720x720-8.png" style="width:100%">
                    </div>

                    <a class="prev" onclick="plusSlides(-1, 1)">&#10094;</a>
                    <a class="next" onclick="plusSlides(1, 1)">&#10095;</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>

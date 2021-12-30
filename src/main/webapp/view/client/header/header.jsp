<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ASTORE | Home</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">--%>
    <link rel="icon" href="<%=request.getContextPath()%>/view/client/images/logotitle.png" type="image/x-icon" />

    <%--    <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' rel='stylesheet'>--%>
    <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
    <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>

</head>

<body>

<div class="header">
    <div class="container">
        <div class="navbar">
            <div class="logo">
                <a href="<%=request.getContextPath()%>/"><img src="<%=request.getContextPath()%>/view/client/assets/images/logo2.png" alt="logo" width="150px"></a>
            </div>
            <nav>
                <ul id="MenuItems">

                    <li><a href="<%=request.getContextPath()%>/Iphone">iPhone</a></li>
                    <li><a href="<%=request.getContextPath()%>/Mac">Mac</a></li>
                    <li><a href="<%=request.getContextPath()%>/IPad">iPad</a></li>
                    <li><a href="<%=request.getContextPath()%>/Watch">Watch</a></li>
                </ul>
            </nav>

            <div class="search-box">
                <button class="btn-search"><i class="fa fa-search" aria-hidden="true"></i></button>
                <input type="text" class="input-search" placeholder="iPhone 13...">
            </div>

            <a href="<%=request.getContextPath()%>/cart">
                <img src="<%=request.getContextPath()%>/view/client/assets/images/cart.png" width="40px" height="40px">
                <span class="header__cart-notice">3</span>
            </a>


            <div id="link-account" style="margin-left: 24px;">
                <a href="<%=request.getContextPath()%>/view/client/account.jsp"><img src="<%=request.getContextPath()%>/view/client/assets/images/account.png" width="40px" height="40px"></a>
            </div>
            <div id="link-sign-in" style=" margin-left: 35px;"><a href="<%=request.getContextPath()%>/view/client/signIn.jsp">
                <p>Đăng nhập</p>
            </a></div>

        </div>

    </div>
</div>

<script src="<%=request.getContextPath()%>/view/client/assets/js/home.js"></script>

</body>
</html>

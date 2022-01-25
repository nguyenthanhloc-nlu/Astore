<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ASTORE | Home</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/header-n-footer.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/grid%20copy.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
          rel="stylesheet">
    <link rel="icon" href="<%=request.getContextPath()%>/view/client/images/logotitle.png" type="image/x-icon"/>
    <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
    <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>

</head>

<body>


<div class="my-header" style="margin-bottom: 200px;">
    <div class="my-container my-container">
        <div class="my-row">
            <div class="my-col my-l-12 my-m-12 my-c-0">
                <div class="my-row">
                    <div class="my-col my-l-2 my-m-3 my-c-0">
                        <a href="<%=request.getContextPath()%>/index.html"> <img src="assets/images/logo2.png"
                                                                                 alt="logo" width="150px"
                                                                                 style="text-align: start;"></a>
                    </div>
                    <div class="my-col my-l-4 my-m-3 my-c-0 "><input type="search" id="mySearch" name="q"
                                                                     placeholder="iPhone 13 Pro Max..." size="30"
                                                                     style="margin-top: 6px; height: 38px; border-radius: 8px; padding: 5px; width: 100%;">
                    </div>
                    <div class="my-col my-l-4 my-m-4 my-c-0" id="MenuItems">
                        <div class="my-row">
                            <div class="my-col my-l-3 my-m-3 my-c-3 my-div-nav-item">
                                <a href="<%=request.getContextPath()%>/products-iphone.html">iPhone</a>
                            </div>

                            <div class="my-col my-l-3 my-m-3 my-c-3 my-div-nav-item">
                                <a href="<%=request.getContextPath()%>/products-mac.html">Mac</a>
                            </div>

                            <div class="my-col my-l-3 my-m-3 my-c-3 my-div-nav-item">
                                <a href="<%=request.getContextPath()%>/products-ipad.html">iPad</a>
                            </div>

                            <div class="my-col my-l-3 my-m-3 my-c-3 my-div-nav-item">
                                <a href="<%=request.getContextPath()%>/products-watch.html">Watch</a>
                            </div>
                        </div>
                    </div>
                    <div class="my-col my-l-2 my-m-2 my-c-0 ">
                        <div class="my-row">
                            <div class="my-col my-l-6 my-m-6 my-c-6 " style="text-align: end;">
                                <a href="<%=request.getContextPath()%>/cart.html">
                                    <span class="my-header__cart-notice">
                                            3
                                        </span>
                                </a>
                            </div>
                            <div class="my-col my-l-6 my-m-6 my-c-6">
                                <div class="account-heder" id="link-account">
                                    <a href="<%=request.getContextPath()%>/informationAccount"><i
                                            class="fas fa-user-circle fa-2x"
                                            style="color: white; margin-top: 8px;"></i></a>
                                </div>
                                <div class="account-heder" id="link-sign-in">
                                    <a href="<%=request.getContextPath()%>/view/client/sign_user/signIn.jsp"><i
                                            class="far fa-user-circle fa-2x"
                                            style="color: white;  margin-top: 8px;"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="my-row">
        <div class="my-col my-l-0 my-m-0 my-c-12" style=" width: 100%;">
            <div class="my-row">
                <div class="my-col my-l-0 my-m-0 my-c-12" style="height: 50px;">
                    <div class="my-row">
                        <div class="my-col my-l-0 my-m-0 my-c-2">
                            <a href="<%=request.getContextPath()%>/cart.html">
                                     <span class="my-header__cart-notice">
                                        3
                                    </span>
                            </a>
                        </div>
                        <div class="my-col my-l-0 my-m-0 my-c-2">
                        </div>
                        <div class="my-col my-l-0 my-m-0 my-c-4">
                            <img src="assets/images/logo2.png" alt="logo" width="100px" style="text-align: start;">
                        </div>
                        <div class="my-col my-l-0 my-m-0 my-c-2">
                        </div>
                        <div class="my-col my-l-0 my-m-0 my-c-2">
                                <div class="my-account-heder" id="link-account-2">
                                    <a href="<%=request.getContextPath()%>/informationAccount">
                                        <i class="fas fa-user-circle fa-2x"
                                           style="color: white;  margin-top: 8px;"></i></a>
                                </div>
                                <div class="my-account-heder" id="link-sign-in-2">
                                    <a href="<%=request.getContextPath()%>/view/client/sign_user/signIn.jsp">
                                        <i class="far fa-user-circle fa-2x"
                                            style="color: white;  margin-top: 8px;"></i></a>
                                </div>

                        </div>
                    </div>
                </div>

                <div class="my-col my-l-0 my-m-0 my-c-12"
                     style="height: 50px; width: 100%; background-color: white; ">
                    <div class="my-row">
                        <div class="my-col my-l-0 my-m-0 my-c-3 my-div-nav-item-2"
                             style="text-align: center;color: black;"><a href="products-iphone.html">iPhone</a>
                        </div>
                        <div class="my-col my-l-0 my-m-0 my-c-3 my-div-nav-item-2" style="text-align: center;"><a
                                href="<%=request.getContextPath()%>/products-mac.html">Mac</a>
                        </div>
                        <div class="my-col my-l-0 my-m-0 my-c-3 my-div-nav-item-2" style="text-align: center;"><a
                                href="<%=request.getContextPath()%>/products-ipad.html">iPad</a>
                        </div>
                        <div class="my-col my-l-0 my-m-0 my-c-3 my-div-nav-item-2" style="text-align: center;"><a
                                href="<%=request.getContextPath()%>/products-watch.html">Watch</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="<%=request.getContextPath()%>/view/client/assets/js/icon_account.js"></script>
</body>
</html>

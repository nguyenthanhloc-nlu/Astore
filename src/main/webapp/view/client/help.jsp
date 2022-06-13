<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ASTORE | Chăm sóc khách hàng</title>
    <link rel="icon" href="assets/images/mac/macbook-pro-16-m1-pro-2021-bac-650x650.png" type="image/x-icon"/>
    <link rel="stylesheet" href="assets/css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
          rel="stylesheet">
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
    />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
<jsp:include page="/view/client/header/header.jsp"></jsp:include>
<div class="small-container">
    <div class="small-container id-products">
        <h2 class="title">Chăm sóc khách hàng</h2>
    </div>
</div>

<div id="help-container">
    <div id="help-inner">


        <form>
            <p id="message">Bạn vui lòng điền vào các thông tin bên dưới để được tư vấn kĩ hơn</p>
            <br>
            <div class="my-form-group">
                <label for="input-1">Họ tên</label>
                <input type="text" class="my-form-control" id="input-1" placeholder="Họ tên" name="help-name">
            </div>

            <div class="my-form-group">
                <label for="input-2">Email - SĐT</label>
                <input type="text" class="my-form-control" id="input-2" placeholder="Email - Số điện thoại"
                       name="help-name">
            </div>

            <div class="my-form-group">
                <label for="input-3">Nội dung yêu cầu</label>
                <textarea class="my-form-control" rows="7" id="input-3" name="help-content"
                          placeholder="Message"></textarea>
            </div>

            <div class="submit">
                <button type="submit">Gửi</button>
            </div>
        </form>

    </div>

</div>


<!-- Footer -->
<jsp:include page="/view/client/footer/footer.jsp"></jsp:include>
<div id="help">
    <a href="<%=request.getContextPath()%>/view/client/help.jsp"
    ><img src="<%=request.getContextPath()%>/view/client/view/client/assets/images/help.png"
          alt="help"
    /></a>
</div>

<!-- scroll to top -->
<a id="button-scroll" onclick="topFunction()"></a>

<!-- javascript -->

<script src="assets/js/format-page.js"></script>
<script src="assets/js/home.js"></script>

</body>

</html>
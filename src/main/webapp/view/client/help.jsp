<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ASTORE | Chăm sóc khách hàng</title>
    <link rel="icon" href="assets/images/mac/macbook-pro-16-m1-pro-2021-bac-650x650.png" type="image/x-icon" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>

    <jsp:include page="header/header.jsp" flush="true"/>

    <div class="small-container">
        <div class="small-container id-products">
            <h1 class="title">Chăm sóc khách hàng</h1>
        </div>
    </div>

    <div id="help-container">
        <div id="help-inner">


            <form >
                <p id="message">Bạn vui lòng điền vào các thông tin bên dưới để được tư vấn kĩ hơn</p>
                <br>
                <div class="my-form-group">
                    <label for="input-1">Họ tên</label>
                    <input type="text" class="my-form-control" id="input-1" placeholder="Họ tên" name="help-name">
                </div>

                <div class="my-form-group">
                    <label for="input-2">Email - SĐT</label>
                    <input type="text" class="my-form-control" id="input-2" placeholder="Email - Số điện thoại" name="help-contact">
                </div>

                <div class="my-form-group">
                    <label for="input-3">Nội dung yêu cầu</label>
                    <textarea class="my-form-control" rows="7" id="input-3" name="help-content" placeholder="Message" ></textarea>
                </div>

                <div class="submit">
                    <button  type="submit">Gửi</button>
                </div>
            </form>

        </div>

    </div>


    <!-- Footer -->
    <jsp:include page="footer/footer.jsp" flush="true"/>
    <script src="./assets/js/help.js"></script>

</body>

</html>

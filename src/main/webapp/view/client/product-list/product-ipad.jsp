<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>APPLE | iPad</title>
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


<div class="product-range" style="margin-top: 100px;">
    <div class="my-container">
        <div class="my-row">
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <div class="title-product-range">
                    <h1 style="color: white; margin: 20px 20px 50px 20px;">
                        <i class="fa fa-apple" aria-hidden="true" style="margin-right: 15px;"></i> iPad
                    </h1>
                </div>
            </div>
        </div>
    </div>
</div>


<jsp:include page="/view/client/slider/slider-ipad.jsp"></jsp:include>


<div class="" style="margin-top: 50px;">
    <div class="my-container">
        <div class="my-row">
            <div class="my-col my-l-9 my-m-9 my-c-9">
                <div class="my-row">
                    <div class="my-col my-l-2 my-m-2 my-c-4">
                        <a href="">
                            <h5 class="title-choice">Tất cả</h5>
                        </a>
                    </div>

                    <div class="my-col my-l-2 my-m-3 my-c-4">
                        <a href="">
                            <h5 class="title-choice">iPad Pro M1</h5>
                        </a>
                    </div>

                    <div class="my-col my-l-2 my-m-3 my-c-4">
                        <a href="">
                            <h5 class="title-choice">iPad Air</h5>
                        </a>
                    </div>

                    <div class="my-col my-l-2 my-m-3 my-c-0">
                        <a href="">
                            <h5 class="title-choice">iPad Air 5</h5>
                        </a>
                    </div>

                    <div class="my-col my-l-2 my-m-0 my-c-0">
                        <a href="">
                            <h5 class="title-choice">iPad mini</h5>
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
                <div class="my-row" id="tbody">
                    <c:forEach items="${ipad}" var="ipad">
                        <div class="my-col my-l-3 my-m-3 my-c-6 item-products"
                             style="display: flex; flex-direction: column; align-items: center">
                            <a href="product?id=${ipad.id}"
                               style="text-decoration: none; color: white !important;">
                                <div class="my-row" style="width: 100%">
                                    <div class="my-col my-l-12 my-m-12 my-c-12" style="position: relative;">
                                        <a href="product?id=${ipad.id}" style="text-decoration: none;">
                                            <div class="component" style="text-decoration: none; margin-top: 8px;">
                                                <c:if test="${ipad.listPhotoUrl.size() > 0}">

                                                    <c:choose>
                                                        <c:when test="${fn:startsWith(ipad.listPhotoUrl.get(0), 'http')}">
                                                            <img src="${ipad.listPhotoUrl.get(0)}"
                                                                 style="max-width: 260px;">
                                                        </c:when>
                                                        <c:otherwise>
                                                            <img src="<%=request.getContextPath()%>/${ipad.listPhotoUrl.get(0)}"
                                                                 style="max-width: 260px;">
                                                        </c:otherwise>
                                                    </c:choose>


                                                </c:if>
                                                <c:if test="${ipad.listPhotoUrl.size() == 0}">
                                                    <img src="https://vanhoadoanhnghiepvn.vn/wp-content/uploads/2020/08/112815953-stock-vector-no-image-available-icon-flat-vector.jpg"
                                                         style="max-width: 260px;">
                                                </c:if>
                                            </div>

                                            <c:if test="${ipad.saleRate > 0}">
                                                <div class="product-sale-rate">
                                                    <p style="margin: 0px; padding: 5px;">-<fmt:formatNumber
                                                            value="${ipad.saleRate}" type="number"/>%</p>
                                                </div>
                                            </c:if>

                                        </a>
                                    </div>
                                </div>

                                <div class="my-row" style="width: 100%">
                                    <div class="my-col my-l-12 my-m-12 my-c-12">
                                        <a href="product?id=${ipad.id}" style="text-decoration: none;">
                                            <h5 style="margin-top: 8px">${ipad.name} ${ipad.rom}GB</h5>
                                        </a>
                                    </div>
                                </div>


                                <div class="my-row" style="width: 100%">
                                    <div class="my-col my-l-12 my-m-12 my-c-12">
                                        <a href="product?id=${ipad.id}" style="text-decoration: none;">
                                            <fmt:setLocale value="vi_VN"/>
                                            <fmt:formatNumber value="${ipad.price}" type="currency"/>
                                        </a>
                                    </div>
                                </div>

                                <div class="my-row" style="width: 100%">
                                    <div class="my-col my-l-12 my-m-12 my-c-12">
                                        <a href="<%=request.getContextPath()%>/addCart?idSP=${ipad.id}"
                                           class="add-to-cart"
                                           style="text-decoration: none;">
                                            Mua ngay
                                        </a>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <br>
        <div class="pagination">
            <c:if test="${totalPages > 1}">
                <a onclick="page('prev', ${totalPages})">«</a>
                <c:forEach var="i" begin="1" end="${totalPages}">

                    <c:if test="${i == 1}">
                        <a class="active" onclick="page(${i}, ${totalPages})">${i}</a>
                    </c:if>
                    <c:if test="${i != 1}">
                        <a onclick="page(${i}, ${totalPages})">${i}</a>
                    </c:if>

                </c:forEach>
                <a onclick="page('next',${totalPages})">»</a>
            </c:if>
        </div>

    </div>

</div>


<script>
    function page(index, totalPages) {

        const currentPage = getCurrentPage();

        if (index === 'prev') {
            if (currentPage > 1)
                index = (parseInt(currentPage) - 1);
            else return;

        }
        if (index === 'next') {
            if (currentPage < totalPages)
                index = (parseInt(currentPage) + 1);
            else return;
        }
        $.ajax({
            url: "Product-ipad",
            type: 'POST',
            data: {
                page: index,
            },
            success: function (responseJson) {
                var row = '';
                var i = 1;
                const formatter = new Intl.NumberFormat('vi-VN', {
                    style: 'currency',
                    currency: 'VND',
                    minimumFractionDigits: 2
                })
                $.each(responseJson, function (key, value) {

                    if (value == null || value.id < 1) return;


                    row += '  <div class="my-col my-l-3 my-m-3 my-c-6 item-products" style="display: flex; flex-direction: column;align-items: center">'
                    row += '    <a href="product?id=' + value.id + '" style="text-decoration: none; color: white !important;">'
                    row += '       <div class="my-row" style="width: 100%">'
                    row += '           <div class="my-col my-l-12 my-m-12 my-c-12" style="position: relative;">'
                    row += '                <a href="product?id=' + value.id + '" style="text-decoration: none;">'
                    row += '                    <div class="component" style="text-decoration: none; margin-top: 8px;">'
                    row += '                            <img href="product?id=' + value.id + '"  src ="' + value.listPhotoUrl[0] + '"  style="max-width: 260px;">'
                    row += '                </div>'
                    // row += '                   <div class="product-sale-rate">'
                    // row += '                         <p style="margin: 0px; padding: 5px;">  -' + value.saleRate + '% </p>'
                    // row += '           </div>'
                    if (value.saleRate > 0) {
                        row += '                   <div class="product-sale-rate">'
                        row += '                         <p style="margin: 0px; padding: 5px;">  -' + value.saleRate + '% </p>'
                        row += '           </div>'
                    }
                    row += '                 </a>'
                    row += '              </div>'
                    row += '          </div>'

                    row += '       <div class="my-row" style="width: 100%">'
                    row += '          <div class="my-col my-l-12 my-m-12 my-c-12">'
                    row += '              <a href="product?id=' + value.id + '" style="text-decoration: none;">'
                    row += '                 <h5 style="margin-top: 8px">' + value.name + ' ' + value.rom + 'GB' + '</h5>'
                    row += '              </a>'
                    row += '          </div>'
                    row += '      </div>'


                    row += '       <div class="my-row" style="width: 100%">'
                    row += '         <div class="my-col my-l-12 my-m-12 my-c-12">'
                    row += '            <a  href="product?id=' + value.id + '" style="text-decoration: none;">'
                    row += '          ' + formatter.format(value.price) + ''
                    row += '            </a>'
                    row += '        </div>'
                    row += '     </div>'

                    row += '     <div class="my-row" style="width: 100%">'
                    row += '         <div class="my-col my-l-12 my-m-12 my-c-12">'
                    row += '               <a href="/view/client/cart/cart.jsp" class="add-to-cart" style="text-decoration: none;">'
                    row += '                    Mua ngay'
                    row += '                </a>'
                    row += '              </div>'
                    row += '            </div>'
                    row += '        </a>'
                    row += '    </div>';
                });

                document.getElementById("tbody").innerHTML = row;
                $("html, body").animate({scrollTop: 500}, 600);
                $(".pagination a").filter(function () {
                    return $(this).attr("class") == 'active'
                }).removeClass("active");
                $(".pagination a").filter(function () {
                    return $(this).text() == index
                }).addClass("active");

                collapsePage()
            }
        });
    }

    $(document).ready(function () {
        collapsePage()
    })

</script>


<script src="<%=request.getContextPath()%>/view/client/assets/js/app-script.js" charset="utf-8"></script>

<!-- Footer -->
<jsp:include page="/view/client/footer/footer.jsp"></jsp:include>
</body>
</html>

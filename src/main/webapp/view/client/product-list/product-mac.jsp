<%@ page import="com.astore.model.Product" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>APPLE | Mac</title>
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
<jsp:include page="/view/client/slider/slider-mac.jsp"></jsp:include>


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
                            <h4 class="title-choice">iMac</h4>
                        </a>
                    </div>

                    <div class="my-col my-l-3 my-m-3 my-c-4">
                        <a href="">
                            <h4 class="title-choice">Macbook Pro</h4>
                        </a>
                    </div>

                    <div class="my-col my-l-3 my-m-3 my-c-0">
                        <a href="">
                            <h4 class="title-choice">Macbook Air</h4>
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
                        <i class="fa fa-apple" aria-hidden="true" style="margin-right: 15px;"></i> Mac
                    </h1>
                </div>
            </div>
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <div class="my-row" id="tbody">
                    <c:forEach items="${mac}" var="mac">
                        <div class="my-col my-l-4 my-m-4 my-c-6 item-products">
                            <a href="" style="text-decoration: none;">
                                <a href="product?id=${mac.id}" style="text-decoration: none;">
                                    <div class="my-col my-l-12 my-m-12 my-c-12">
                                        <div class="my-row" style="position: relative;">
                                            <div class="my-col my-l-12 my-m-12 my-c-12">
                                                <a href="" class="component" style="text-decoration: none;">
                                                    <c:if test="${mac.listPhotoUrl.size() > 0}">
                                                        <img src="<%=request.getContextPath()%>/${mac.listPhotoUrl.get(0)}"
                                                             style="max-width: 181px;">
                                                    </c:if>
                                                    <c:if test="${mac.listPhotoUrl.size() == 0}">
                                                        <img src="https://img.icons8.com/carbon-copy/100/000000/no-image.png"
                                                             style="max-width: 181px;" >
                                                    </c:if>
                                                </a>
                                                <div class="product-sale-rate">
                                                    <p style="margin: 0px; padding: 5px;">-<fmt:formatNumber value="${mac.saleRate}" type="number"/>%</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="my-row">
                                            <div class="my-col my-l-12 my-m-12 my-c-12">
                                                <a href="" class="component" style="text-decoration: none;">
                                                    <h6 style="margin-top: 8px">${mac.name} ${mac.rom}GB</h6>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="my-row">
                                            <div class="my-col my-l-12 my-m-12 my-c-12">
                                                <a href="" class="component" style="text-decoration: none;">
                                                    <h5>
                                                        <fmt:setLocale value="vi_VN"/>
                                                        <fmt:formatNumber value="${mac.price}" type="currency"/>
                                                    </h5>

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
                <c:forEach var = "i"  begin="1" end="${totalPages}">

                    <c:if test="${i == 1}">
                        <a class="active" onclick="page(${i}, ${totalPages})">${i}</a>
                    </c:if>
                    <c:if test="${i != 1}">
                        <a onclick="page(${i}, ${totalPages})" >${i}</a>
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
                index = (parseInt(currentPage) + 1) ;
            else return;
        }
        $.ajax({
            url: "Product-mac",
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

                    if(value == null || value.id <1) return;
                    row += '<div class="my-col my-l-4 my-m-4 my-c-6 item-products">'
                    row +=    '<a href="" style="text-decoration: none;">'
                    row +=      '<a href="product?id='+value.id+'" style="text-decoration: none;">'
                    row +=             '<div class="my-col my-l-12 my-m-12 my-c-12">'
                    row +=               '<div class="my-row" style="position: relative;">'
                    row +=                   '<div class="my-col my-l-12 my-m-12 my-c-12">'
                    row +=                        '<a href="" class="component" style="text-decoration: none;">'
                    row +=                           '<img src="'+value.listPhotoUrl[0]+'" style="max-width: 181px;">'
                    row +=                        '</a>'
                    row +=                       '<span class="product-sale-rate">'
                    row +=                         '<p style="margin: 0px; padding: 5px;">-'+value.saleRate+'%</p>'
                    row +=                      '</span>'
                    row +=                  '</div>'
                    row +=               '</div>'
                    row +=              '<div class="my-row">'
                    row +=                   '<div class="my-col my-l-12 my-m-12 my-c-12">'
                    row +=                        '<a href="" class="component" style="text-decoration: none;">'
                    row +=                           '<h5 style="margin-top: 8px">'+value.name+' '+value.rom+'GB'+'</h5>'
                    row +=                       '</a>'
                    row +=                     '</div>'
                    row +=                 '</div>'
                    row +=                  '<div class="my-row">'
                    row +=                      '<div class="my-col my-l-12 my-m-12 my-c-12">'
                    row +=                          '<a href="" class="component" style="text-decoration: none;">'
                    row +=                              '<h4>'+formatter.format(value.price)+'</h4>'
                    row +=                         '</a>'
                    row +=                      '</div>'
                    row +=                  '</div>'
                    row +=                  '<div class="my-row">'
                    row +=                      '<div class="my-col my-l-12 my-m-12 my-c-12">'
                    row +=                         '<a href="" class="add-to-cart" style="text-decoration: none;">Mua ngay</a>'
                    row +=                     '</div>'
                    row +=                '</div>'
                    row +=              '</div>'
                    row +=          '</a>'
                    row +=      '</a>'
                    row +=   '</div>';
                });

                document.getElementById("tbody").innerHTML =row;
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

    $(document).ready(function(){
        collapsePage()
    })

</script>


<script src="<%=request.getContextPath()%>/view/client/assets/js/app-script.js" charset="utf-8" ></script>

<!-- Footer -->
<jsp:include page="/view/client/footer/footer.jsp"></jsp:include>
</body>
</html>

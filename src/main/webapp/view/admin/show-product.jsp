<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="./header/header.jsp" flush="true"/>
<title>Admin | Sản phẩm</title>

<style>
    /* thiết lập style cho thẻ a */
    .pagination a {
        color: white;
        float: left;
        padding: 8px 16px;
        text-decoration: none;
        transition: background-color .3s;
        cursor: pointer;
    }
    /* thiết lập style cho class active */
    .pagination a.active {
        background-color: dodgerblue;
        color: white;
    }
    /* thêm màu nền khi người dùng hover vào class không active */
    .pagination a:hover:not(.active) {
        background-color: #ddd;
    }
</style>

<div class="content-wrapper">
    <div class="container-fluid">

        <div class="row">
            <div class="col-lg-12 tool-bar">
                <button class="add-catalog"><a href="add-product">Thêm mới</a></button>
                <div>
                    <input type="text" name="in-search" class="search" placeholder="Tìm kiếm" id="input-search"/>
                    <i class="fa fa-search"></i>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Danh sách sản phẩm</h5>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Mã sản phẩm</th>
                                    <th scope="col">Tên sản phẩm</th>
                                    <th scope="col">Giá</th>
                                    <th scope="col">Bộ nhớ</th>
                                    <th scope="col">Ram</th>
                                    <th scope="col">Màu</th>
                                    <th scope="col">Hành động</th>
                                </tr>
                                </thead>
                                <tbody id="tbody">
                                    <%int i = 1;%>
                                    <c:forEach items="${products}" var="p">
                                        <tr id="${p.id}tr">
                                            <td scope="row"><%=i++%>
                                            </td>
                                            <td>${p.id}</td>
                                            <td>${p.name}</td>
                                            <td><fmt:setLocale value="vi_VN"/>
                                                <fmt:formatNumber value="${p.price}" type="currency"  minFractionDigits="2"/></td>
                                            <td>${p.rom}GB</td>
                                            <td>${p.ram}GB</td>
                                            <td>${p.colorName}</td>

                                            <input type="hidden"
                                                   value="delete-product"
                                                   id="${p.id}"/>
                                            <td>
                                                <button class="btn btn-danger"><a onclick="JSconfirm(${p.id},'Chắc chắn bạn muốn xóa')">Xóa</a>
                                                </button>

                                                <button class="btn btn-success"><a href="update-product?id=${p.id}">Sửa</a>
                                                </button>
                                            </td>
                                        </tr>
                                    </c:forEach>

                                </tbody>
                            </table>


                        </div>
                    </div>
                </div>
            </div>
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
        <div class="overlay toggle-menu"></div>
    </div>
</div>


<jsp:include page="footer/footer.jsp" flush="true"/>

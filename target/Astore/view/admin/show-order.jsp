<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header/header.jsp" flush="true"/>
<title>Admin | Đơn hàng</title>

<div class="content-wrapper">
    <div class="container-fluid">
        <!--End Row-->


        <div class="row">

            <div class="col-lg-12 tool-bar">
                <button class="add-catalog"><a href="add-order.jsp">Thêm mới</a></button>

                <div>
                    <input type="text" name="in-search" class="search" placeholder="Tìm kiếm"/>
                    <i class="fa fa-search"></i>
                </div>
            </div>


            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Danh sách đơn hàng</h5>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Mã đơn hàng</th>
                                    <th scope="col">Mã Khách hàng</th>
                                    <th scope="col">Tên khách hàng</th>
                                    <th scope="col">Tri giá</th>
                                    <th scope="col">Ngày lập hóa đơn</th>
                                    <th scope="col">Hành động</th>

                                </tr>
                                </thead>
                                <tbody>

                                <tr>
                                    <td scope="row">1</td>
                                    <td>11</td>
                                    <td>455</td>
                                    <td>Nguyễn Thành Lộc</td>
                                    <td>15.000.000</td>
                                    <td>2021-09-25</td>
                                    <td>
                                        <button class="btn btn-danger"><a href="#">Xóa</a></button>

                                        <button class="btn btn-success"><a href="edit-order.jsp">Sửa</a></button>
                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<jsp:include page="./footer/footer.jsp" flush="true"/>

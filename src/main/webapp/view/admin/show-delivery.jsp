<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header/header.jsp" flush="true"/>
<title>Admin | Giao hàng</title>

<div class="content-wrapper">
    <div class="container-fluid">
        <!--End Row-->


        <div class="row">

            <div class="col-lg-12 tool-bar">
                <button class="add-catalog"><a href="add-delivery.jsp">Thêm mới</a></button>

                <div>
                    <input type="text" name="in-search" class="search" placeholder="Tìm kiếm"/>
                    <i class="fa fa-search"></i>
                </div>
            </div>


            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Danh sách giao hàng</h5>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Mã giao hàng</th>
                                    <th scope="col">Mã đơn hàng</th>
                                    <th scope="col">Địa chỉ giao hàng</th>
                                    <th scope="col">Ngày giao hàng</th>
                                    <th scope="col">Hành động</th>

                                </tr>
                                </thead>
                                <tbody>

                                <tr>
                                    <td scope="row">1</td>
                                    <td>11</td>
                                    <td>455</td>
                                    <td>48 Lê Lợi, Bình Chiều</td>
                                    <td>25/12/2021</td>
                                    <td>
                                        <button class="btn btn-danger"><a href="#">Xóa</a></button>

                                        <button class="btn btn-success"><a href="edit-delivery.jsp">Sửa</a></button>
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

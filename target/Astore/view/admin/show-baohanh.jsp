<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header/header.jsp" flush="true"/>
<title>Admin | Bảo Hành</title>

<div class="content-wrapper">
    <div class="container-fluid">
        <!--End Row-->


        <div class="row">
            <div class="col-lg-12 tool-bar">
                <button class="add-catalog"><a href="add-baohanh.jsp">Thêm mới</a></button>
                <div>
                    <input type="text" name="in-search" class="search" placeholder="Tìm kiếm"/>
                    <i class="fa fa-search"></i>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Danh sách phiếu bảo hành</h5>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Mã bảo hành</th>
                                    <th scope="col">Mã đơn hàng</th>
                                    <th scope="col">Mã sản phẩm</th>
                                    <th scope="col">Tên sản phẩm</th>
                                    <th scope="col">Ngày nhận</th>
                                    <th scope="col">Ngày trả</th>
                                    <th scope="col">Phí bảo hành</th>
                                    <th scope="col">Nội dung bảo hành</th>
                                    <th scope="col">Tên trạng thái bảo hành</th>
                                    <th scope="col">Hành động</th>
                                </tr>
                                </thead>
                                <tbody>

                                <tr>
                                    <td scope="row">1</td>
                                    <td>BH4444</td>
                                    <td>DH0002</td>
                                    <td>SP0002</td>
                                    <td>Iphone X</td>
                                    <td>20/2/2021</td>
                                    <td>Null</td>
                                    <td>0.0</td>
                                    <td>Lỗi hiển thị</td>
                                    <td>Đã tiếp nhận</td>
                                    <td>
                                        <button class="btn btn-danger"><a href="#">Xóa</a></button>
                                        <button class="btn btn-success"><a href="edit-baohanh.jsp">Sửa</a></button>
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

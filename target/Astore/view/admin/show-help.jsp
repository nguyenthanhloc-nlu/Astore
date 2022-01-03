<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header/header.jsp" flush="true"/>
<title>Admin | Hỗ trợ</title>

<div class="content-wrapper">
    <div class="container-fluid">
        <!--End Row-->

        <div class="col-lg-12 tool-bar">
            <button class="add-catalog" style="visibility: hidden;"><a href="#"></a></button>
            <div>
                <input type="text" name="in-search" class="search" placeholder="Tìm kiếm"/>
                <i class="fa fa-search"></i>
            </div>
        </div>


        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Danh sách hỗ trợ</h5>
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Mã hỗ trợ</th>
                                <th scope="col">Tên khách hàng</th>
                                <th scope="col">Email/SĐT</th>
                                <th scope="col">Nội dung</th>
                                <th scope="col">Ngày tạo</th>
                                <th scope="col">Hành động</th>
                            </tr>
                            </thead>
                            <tbody>

                            <tr>
                                <td scope="row">1</td>
                                <td>3</td>
                                <td>Thanh Mai</td>
                                <td>mai@gmail.com</td>
                                <td>Vui lòng tư vấn cho tôi các sản phẩm dell mới nhất 2021</td>
                                <td>2021-10-10</td>
                                <td>
                                    <button class="btn btn-danger"><a href="#">Xóa</a></button>
                                    <button class="btn btn-success"><a href="show-help-reply.jsp">Phản hồi</a></button>
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


<jsp:include page="./footer/footer.jsp" flush="true"/>

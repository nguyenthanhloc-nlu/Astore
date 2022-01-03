<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header/header.jsp" flush="true"/>
<title>Admin | Siide</title>

<div class="content-wrapper">
    <div class="container-fluid">

        <div class="row">
            <div class="col-lg-12 tool-bar">
                <button class="add-catalog"><a href="add-slider.jsp">Thêm mới</a></button>
                <div>
                    <input type="text" name="in-search" class="search" placeholder="Tìm kiếm"/>
                    <i class="fa fa-search"></i>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Danh sách slide</h5>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Slide id</th>
                                    <th scope="col">Tiêu đề</th>
                                    <th scope="col">Nội dung</th>
                                    <th scope="col">Photo url</th>
                                    <th scope="col">Hành động</th>

                                </tr>
                                </thead>
                                <tbody>

                                <tr>
                                    <td scope="row">1</td>
                                    <td>sld1001</td>
                                    <td>Tiêu đề</td>
                                    <td>GIảm giá 20%</td>
                                    <td>http://</td>
                                    <td>
                                        <button class="btn btn-danger"><a href="#">Xóa</a></button>
                                        <button class="btn btn-success"><a href="edit-slider.jsp">Sửa</a></button>
                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="overlay toggle-menu"></div>
    </div>
</div>


<jsp:include page="./footer/footer.jsp" flush="true"/>

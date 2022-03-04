<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header/header.jsp" flush="true"/>
<title>Admin | Tồn kho</title>

<div class="content-wrapper">
    <div class="container-fluid">

        <div class="row">

            <div class="col-lg-12 tool-bar">
                <button class="add-catalog"><a href="add-inventory.jsp">Thêm mới</a></button>
                <div>
                    <input type="text" name="in-search" class="search" placeholder="Tìm kiếm"/>
                    <i class="fa fa-search"></i>
                </div>
            </div>

            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Danh sách tồn kho</h5>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Mã sản phẩm</th>
                                    <th scope="col">Tên sản phẩm</th>
                                    <th scope="col">Số lượng tồn kho</th>
                                    <th scope="col">Hành động</th>
                                </tr>
                                </thead>
                             <tbody id="tbody">
                             <%int i = 1;%>
                            <c:forEach items="${listInventory}" var="in">
                                <tr>
                                    <td scope="row"><%=i++%></td>
                                    <td>${in.id}</td>
                                    <td>${in.idSp}</td>
                                    <td>${in.count}</td>
                                    <td>
                                        <button class="btn btn-danger"><a href="#">Xóa</a></button>
                                        <button class="btn btn-success"><a href="edit-inventory.jsp">Sửa</a></button>
                                    </td>
                                </tr>

                            </c:forEach>
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

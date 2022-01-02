<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="./header/header.jsp" flush="true"/>
<title>Admin</title>
<meta charset="utf-8" />
<div class="content-wrapper">
    <div class="container-fluid">
        <!--End Row-->


        <div class="row">
            <div class="col-lg-12 tool-bar">
                <button class="add-catalog"><a href="add-admin">Thêm mới</a></button>
                <div>
                    <input type="text" name="in-search" class="search" placeholder="Tìm kiếm" id="input-search"/>
                    <i class="fa fa-search"></i>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Danh sách Admin</h5>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Tên đăng nhập</th>
                                    <th scope="col">Tên Admin</th>
                                    <th scope="col">Hành động</th>
                                </tr>
                                </thead>
                                <tbody id="tbody">
                                    <%int i = 1;%>
                                    <c:forEach items="${users}" var="c">
                                        <tr id="${c.id}tr">
                                            <td scope="row"><%=i++%>
                                            </td>
                                            <td>${c.userName}</td>
                                            <td>${c.name}</td>
                                            <input type="hidden"
                                                   value="delete-user"
                                                   id="${c.id}"/>
                                            <td>
                                                <button class="btn btn-danger"><a onclick="JSconfirm(${c.id},'Chắc chắn bạn muốn xóa')">Xóa</a>
                                                </button>

                                                <button class="btn btn-success"><a href="update-admin?id=${c.id}">Sửa</a>
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
        </div>
    </div>
</div>


<jsp:include page="./footer/footer.jsp" flush="true"/>


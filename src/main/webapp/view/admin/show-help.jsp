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
                            <%int i = 1;%>
                            <c:forEach items="${listHelp}" var="h">
                                <tr>
                                    <td scope="row"><%=i++%></td>
                                    <td>${h.id}</td>
                                    <td>${h.fullName}</td>
                                    <td>${h.email}</td>
                                    <td>${h.content}</td>
                                    <td>${h.createAt}</td>
                                    <td>
                                        <button class="btn btn-danger"><a href="#">Xóa</a></button>
                                        <button class="btn btn-success"><a href="<%=request.getContextPath()%>/manage/informationHelp?nameUser=${h.fullName}&emailUser=${h.email}">Phản hồi</a></button>
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


<jsp:include page="./footer/footer.jsp" flush="true"/>

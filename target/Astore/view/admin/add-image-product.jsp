<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header/header.jsp" flush="true"/>
<title>Admin | Hình cho sản phẩm</title>


<div class="content-wrapper">
    <div class="container-fluid">
        <div class="row mt-3">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title text-danger">${error}</div>
                        <div class="card-title">Thêm hình ảnh sản phẩm</div>
                        <hr>
                        <form action="add-image-product" method="post">

                            <div class="form-group">
                                <label for="input-1">Mã sản phẩm</label>
                                <input type="text" class="form-control" id="input-1" placeholder="Mã sản phẩm"
                                       name="product_id" required value="${image.id}">
                            </div>
                            <div class="form-group">
                                <label for="input-2">URL ảnh</label>
                                <input type="text" class="form-control" id="input-2" placeholder="URL ảnh"
                                       name="image_url" required value="${image.url}">
                            </div>

                            <div class="form-footer">
                                <button class="btn btn-danger"><a onclick="goback()">Hủy</a></button>

                                <button type="submit" class="btn btn-success"><a>Thêm</a></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="overlay toggle-menu"></div>
    </div>
</div>


<jsp:include page="footer/footer.jsp" flush="true"/>

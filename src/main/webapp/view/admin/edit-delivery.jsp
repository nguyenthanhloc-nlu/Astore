<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header/header.jsp" flush="true"/>
<title>Admin | Giao hàng</title>

<div class="content-wrapper">
    <div class="container-fluid">
        <div class="row mt-3">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title">Cập nhật giao hàng</div>
                        <hr>
                        <form>

                            <div class="form-group">
                                <label for="input-1">Mã giao hàng</label>
                                <input type="text" class="form-control" readonly="readonly" id="input-1"
                                       name="delivery-id" value="11" placeholder="Mã giao hàng">
                            </div>

                            <div class="form-group">
                                <label for="input-2">Mã đơn hàng</label>
                                <input type="text" class="form-control" id="input-2" readonly="readonly" name="order-id"
                                       value="455" placeholder="Mã Đơn hàng">
                            </div>

                            <div class="form-group">
                                <label for="input-3">Địa chỉ giao hàng</label>
                                <input type="text" class="form-control" id="input-3" name="delivery-address"
                                       value="48 Lê Lợi, Bình Chiểu" placeholder="Địa chỉ giao hàng">
                            </div>

                            <div class="form-group">
                                <label for="input-4">Ngày giao hàng</label>
                                <input type="date" class="form-control" id="input-4" placeholder="Ngày lập hóa đơn"
                                       name="delivery-date" value="2021-12-25" placeholder="Ngày giao hàng">
                            </div>

                            <div class="form-footer">
                                <button class="btn btn-danger"><a href="show-delivery.jsp">Hủy</a></button>
                                <button class="btn btn-success"><a href="#">Cập nhật</a></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="overlay toggle-menu"></div>
    </div>
</div>


<jsp:include page="./footer/footer.jsp" flush="true"/>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header/header.jsp" flush="true"/>

        <div class="content-wrapper">
            <div class="container-fluid">
                <div class="row mt-3">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-title">Thêm mới</div>
                                <hr>
                                <form>

                                    <div class="form-group">
                                        <label for="input-1">Mã giao hàng</label>
                                        <input type="text" class="form-control" id="input-1" name="delivery-id" placeholder="Mã giao hàng">
                                    </div>

                                    <div class="form-group">
                                        <label for="input-2">Mã đơn hàng</label>
                                        <input type="text" class="form-control" id="input-2" name="order-id" placeholder="Mã hóa đơn">
                                    </div>

                                    <div class="form-group">
                                        <label for="input-3">Địa chỉ giao hàng</label>
                                        <input type="text" class="form-control" id="input-3" name="delivery-address" placeholder="Địa chỉ giao hàng">
                                    </div>

                                    <div class="form-group">
                                        <label for="input-4">Ngày giao hàng</label>
                                        <input type="date" class="form-control" id="input-4" placeholder="Ngày lập hóa đơn"  name="delivery-date" placeholder="Ngày giao hàng">
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

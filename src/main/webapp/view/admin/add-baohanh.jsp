<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header/header.jsp" flush="true"/>
    <title>Admin | Bảo hành</title>

        <div class="content-wrapper">
            <div class="container-fluid">
                <div class="row mt-3">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-title">Thêm phiếu bảo hành</div>
                                <hr>
                                <form>

                                    <div class="form-group">
                                        <label for="input-1">Mã phiếu bảo hành</label>
                                        <input type="text" class="form-control"  id="input-1" placeholder="Mã phiếu bảo hành" name="baohanh-id" >
                                    </div>
                                    <div class="form-group">
                                        <label for="input-2">Mã đơn hàng</label>
                                        <input type="text" class="form-control"  id="input-2" placeholder="Mã đơn hàng" name="order-id" >
                                    </div>
                                    <div class="form-group">
                                        <label for="input-3">Mã sản phẩm</label>
                                        <input type="text" class="form-control"  id="input-3" placeholder="Mã sản phẩm" name="product-id" >
                                    </div>
                                    <div class="form-group">
                                        <label for="input-4">Mã khách hàng</label>
                                        <input type="text" class="form-control" placeholder="Mã khách hàng"  id="input-4" name="user-id" >
                                    </div>

                                    <div class="form-group">
                                        <label for="input-5">Ngày nhận</label>
                                        <input type="date" class="form-control" id="input-5" placeholder="Ngày nhận" >
                                    </div>
                                    <div class="form-group">
                                        <label for="input-6">Ngày trả</label>
                                        <input type="date" class="form-control" id="input-6" placeholder="Ngày tạo">
                                    </div>

                                    <div class="form-group">
                                        <label for="input-7">Phí bảo hành</label>
                                        <input type="text" class="form-control" id="input-7" name="phiBH" >
                                    </div>

                                    <div class="form-group">
                                        <label for="input-8">Nội dung bảo hành</label>
                                        <input type="text" class="form-control" id="input-8" name="content-BH" >
                                    </div>

                                    <div class="form-group">
                                        <label for="input-9">Trạng thái bảo hành </label>
                                        <div>
                                            <select class="form-control valid" id="input-9" name="status-bh" required aria-invalid="false">
                                                <option value="Tạo yêu cầu bảo hành">Tạo yêu cầu bảo hành</option>
                                                <option value="Đã tiếp nhận">Đã tiếp nhận</option>
                                                <option value="Đang bảo hành">Đang bảo hành</option>
                                                <option value="Đã hoàn tất">Đã hoàn tất</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-footer">
                                        <button class="btn btn-danger"><a href="show-baohanh.jsp">Hủy</a></button>

                                        <button type="submit" class="btn btn-success"><a href="#">Thêm</a></button>
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

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header/header.jsp" flush="true"/>
<title>Admin | Slide</title>

<div class="content-wrapper">
    <div class="container-fluid">

        <div class="row mt-3">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title">Cập nhật slide</div>
                        <hr>
                        <form action="#t">
                            <div class="form-group">
                                <label for="input-1">Slide ID</label>
                                <input type="text" class="form-control" id="input-1" readonly="readonly"
                                       placeholder="ID" value="SLD0001" name="slide-id">
                            </div>
                            <div class="form-group">
                                <label for="input-10">Tiêu đề</label>
                                <input type="text" class="form-control" id="input-10" placeholder="Tiêu đề"
                                       value="Tiêu đề" name="slide-tittle">
                            </div>
                            <div class="form-group">
                                <label for="input-2">Nội dung</label>
                                <textarea name="" class="form-control" placeholder="Nội dung" id="input-2" cols="30"
                                          rows="5" name="slide-content">Giảm giá 20%</textarea>
                            </div>
                            <div class="form-group">
                                <label for="input-3">Photo url</label>
                                <input type="text" class="form-control" id="input-3" placeholder="Photo url"
                                       value="http://example.com" name="slide-photourl">
                            </div>

                            <div class="form-group">
                                <label for="input-4">Ngày tạo</label>
                                <input type="date" class="form-control" id="input-4" placeholder="Ngày tạo"
                                       value="2021-09-25" name="slide-created">
                            </div>

                            <div class="form-group">
                                <button class="btn btn-danger"><a href="show-slider.jsp">Hủy</a></button>

                                <button type="submit" class="btn btn-success"><a href="#">Cập nhật</a></button>
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

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="./header/header.jsp" flush="true"/>

<title>Admin | Sản phẩm</title>

<div class="content-wrapper">
    <div class="container-fluid">
        <div class="row mt-3">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title text-success">${success}</div>
                        <div class="card-title text-danger">${error}</div>
                        <div class="card-title">Thêm mới</div>
                        <hr>
                        <form action="add-product" method="post">

<%--                            <div class="form-group">--%>
<%--                                <label for="input-1">Mã sản phẩm</label>--%>
<%--                                <input type="text" class="form-control" id="input-1" name="product_id" required placeholder="Mã sản phẩm" value="${product.id}">--%>
<%--                            </div>--%>

                            <div class="form-group">
                                <label for="input-subCatogory">Mã dòng sản phẩm</label>
                                <input type="text" class="form-control" id="input-subCatogory" name="subcategory_id" required placeholder="Mã dòng sản phẩm" value="${product.subCategoryId}">
                                <p style="font-size:12px; color:red; margin-bottom: 0px " id="error-subCatogory"></p>
                            </div>

                            <div class="form-group">
                                <label for="input-price">Giá</label>
                                <input type="text" class="form-control" id="input-price" name="product_price" required placeholder="Giá" value="${product.price}">
                                <p style="font-size:12px; color:red; margin-bottom: 0px " id="error-price"></p>
                            </div>

                            <div class="form-group">
                                <label for="input-color" class="col-form-label">Mã màu sắc</label>
                                <input type="text" class="form-control" id="input-color" name="product_color_id" required placeholder="Mã màu" value="${product.colorId}">
                                <p style="font-size:12px; color:red; margin-bottom: 0px " id="error-color"></p>
                            </div>
                            <div class="form-group">
                                <label for="input-8" class="col-form-label">Kích thước màn hình</label>
                                <input type="text" class="form-control" id="input-8" name="product_size_screen" placeholder="Kích thước màn hình" value="${product.sizeScreen}">
                            </div>

                            <div class="form-group">
                                <label for="input-9" class="col-form-label">Độ phân giải</label>
                                <input type="text" class="form-control" id="input-9" name="product_resolution_screen" placeholder="Độ phân giải" value="${product.screenResolution}">
                            </div>

                            <div class="form-group">
                                <label for="input-frontCamera" class="col-form-label">Camera trước</label>
                                <input type="text" class="form-control" id="input-frontCamera" name="product_frontcam" placeholder="Camera trước" value="${product.frontCamera}">
                                <p style="font-size:12px; color:red; margin-bottom: 0px " id="error-frontCamera"></p>
                            </div>
                            <div class="form-group">
                                <label for="input-backCamera" class="col-form-label">Camera sau</label>
                                <input type="text" class="form-control" id="input-backCamera" name="product_backcam" placeholder="Camera sau" value="${product.backCamera}">
                                <p style="font-size:12px; color:red; margin-bottom: 0px " id="error-backCamera"></p>
                            </div>
                            <div class="form-group">
                                <label for="input-ram" class="col-form-label">Ram</label>
                                <input type="text" class="form-control" id="input-ram" name="product_ram" required placeholder="Ram" value="${product.ram}">
                                <p style="font-size:12px; color:red; margin-bottom: 0px " id="error-ram"></p>
                            </div>
                            <div class="form-group">
                                <label for="input-rom" class="col-form-label"></label>Rom</label>
                                <input type="text" class="form-control" id="input-rom" name="product_rom" required placeholder="Rom" value="${product.rom}">
                                <p style="font-size:12px; color:red; margin-bottom: 0px " id="error-rom"></p>
                            </div>


                            <div class="form-footer">
                                <button class="btn btn-danger"><a onclick="goback()">Hủy</a></button>
                                <button class="btn btn-success" type="submit"><a>Thêm</a></button>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="overlay toggle-menu"></div>
    </div>
</div>
<script>
    isValidInt('input-subCatogory','error-subCatogory','Mã dòng sản phẩm', true)
    isValidFloat('input-price','error-price','Giá',true)
    isValidInt('input-color','error-color','Mã màu',true)
    isValidInt('input-frontCamera','error-frontCamera','Độ phân giải camera',false)
    isValidInt('input-backCamera','error-backCamera','Độ phân giải camera',false)
    isValidInt('input-rom','error-rom','Rom')
    isValidInt('input-ram','error-ram','Ram')

    function isValidInt(inputId,errorId,inputName,require) {
        var input = document.getElementById(inputId);
        var error = document.getElementById(errorId);
        input.addEventListener("input", (e) => {
            let value = input.value;

            if (value == "" || value == null) {
                if(require){
                    error.innerText = inputName + ' không được để trống !'
                }else {
                    error.innerText = ''
                }
            } else {
                if(isNaN(parseInt(value))){
                    error.innerText = inputName +" không hợp lệ!";
                }else{
                    error.innerText = "";
                    return true;
                }
            }
            return false;
        })
    }

    function isValidFloat(inputId,errorId,inputName,require) {
        var input = document.getElementById(inputId);
        var error = document.getElementById(errorId);
        input.addEventListener("input", (e) => {
            let value = input.value;

            if (value == "" || value == null) {
                if(require){
                    error.innerText = inputName + ' không được để trống !'
                }else {
                    error.innerText = ''
                }
            } else {
                if(isNaN(parseFloat(value))){
                    error.innerText = inputName +" không hợp lệ!";
                }else{
                    error.innerText = "";
                    return true;
                }
            }
            return false;
        })
    }
</script>


<jsp:include page="footer/footer.jsp" flush="true"/>

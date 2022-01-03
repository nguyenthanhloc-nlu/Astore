<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<head>
    <title>Admin | Dashboard</title>
</head>


<jsp:include page="./header/header.jsp" flush="true"/>


<div class="content-wrapper">
    <div class="container-fluid">

        <div class="card mt-3">
            <div class="card-content">
                <div class="row row-group m-0">
                    <div class="col-12 col-lg-6 col-xl-3 border-light">
                        <div class="card-body">
                            <h5 class="text-white mb-0">3 <span class="float-right"><i class="fa fa-shopping-cart"></i></span>
                            </h5>
                            <div class="progress my-3" style="height:3px;">
                                <div class="progress-bar" style="width:55%"></div>
                            </div>
                            <p class="mb-0 text-white small-font">Đơn hàng (theo tuần)<span class="float-right">+4.2% <i
                                    class="zmdi zmdi-long-arrow-up"></i></span></p>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6 col-xl-3 border-light">
                        <div class="card-body">
                            <h5 class="text-white mb-0">15.000.000 <span class="float-right">VNĐ</span></h5>
                            <div class="progress my-3" style="height:3px;">
                                <div class="progress-bar" style="width:55%"></div>
                            </div>
                            <p class="mb-0 text-white small-font">Lợi nhuận (theo tuần)<span
                                    class="float-right">+1.2% <i
                                    class="zmdi zmdi-long-arrow-up"></i></span></p>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6 col-xl-3 border-light">
                        <div class="card-body">
                            <h5 class="text-white mb-0">25 <span class="float-right"><i class="fa fa-eye"></i></span>
                            </h5>
                            <div class="progress my-3" style="height:3px;">
                                <div class="progress-bar" style="width:55%"></div>
                            </div>
                            <p class="mb-0 text-white small-font">Ghé trang (theo tuần)<span
                                    class="float-right">+5.2% <i
                                    class="zmdi zmdi-long-arrow-up"></i></span></p>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6 col-xl-3 border-light">
                        <div class="card-body">
                            <h5 class="text-white mb-0">3 <span class="float-right"><i class="fa fa-envira"></i></span>
                            </h5>
                            <div class="progress my-3" style="height:3px;">
                                <div class="progress-bar" style="width:55%"></div>
                            </div>
                            <p class="mb-0 text-white small-font">Bán ra (theo tuần)<span class="float-right">+2.2% <i
                                    class="zmdi zmdi-long-arrow-up"></i></span></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-lg-6 col-xl-6">
                <div class="card">
                    <div class="card-header">Danh mục bán chạy
                    </div>
                    <div class="card-body">
                        <div class="chart-container-2">
                            <canvas id="chart2"></canvas>
                        </div>
                    </div>

                    <div class="table-responsive">
                        <table class="table align-items-center">
                            <tbody>
                            <tr>
                                <td><i class="fa fa-circle mr-2" style="color:#ffffff"></i>Iphone</td>
                                <td>50.000.000 VNĐ</td>
                                <td>+30%</td>
                            </tr>
                            <tr>
                                <td><i class="fa fa-circle  mr-2" style="color:red"></i>Ipad</td>
                                <td>20.110.000 VNĐ</td>
                                <td>+20%</td>
                            </tr>
                            <tr>
                                <td><i class="fa fa-circle  mr-2" style="color:blue"></i>Mac</td>
                                <td>25.215.500 VNĐ</td>
                                <td>+20%</td>
                            </tr>

                            <tr>
                                <td><i class="fa fa-circle  mr-2" style="color:yellow"></i>Watch</td>
                                <td>12.215.500 VNĐ</td>
                                <td>+12%</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>


                </div>

            </div>

        </div>

        <!-- <div class="overlay toggle-menu"></div> -->
    </div>
</div>

<jsp:include page="./footer/footer.jsp" flush="true"/>
<script src="<%=request.getContextPath()%>/view/admin/assets/js/index.js"></script>




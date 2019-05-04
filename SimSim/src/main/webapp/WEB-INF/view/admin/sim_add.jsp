<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add sim	</title>
<link rel="shortcut icon" type="image/x-icon" href="<c:url value="/resource/admin/img/favicon.ico"/>">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/bootstrap.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/fontawesome.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/owl.carousel.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/owl.theme.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/owl.transitions.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/animate.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/normalize.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/meanmenu.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/main.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/educate-custon-icon.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/morrisjs/morris.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/scrollbar/jquery.mCustomScrollbar.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/metisMenu/metisMenu.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/metisMenu/metisMenu-vertical.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/calendar/fullcalendar.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/calendar/fullcalendar.print.min.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/admin/style.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/responsive.css"/>">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="<c:url value="/resource/js/validator.js"/>"
    type="text/javascript"></script>
<script
	src="<c:url value="/resource/admin/js/vendor/modernizr-2.8.3.min.js"/>"></script>
<script src="<c:url value="/resource/admin/js/validator.js"/>" type="text/javascript"></script>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<div class="all-content-wrapper">
		<%@ include file="menu_nav.jsp"%>
		<div class="single-pro-review-area mt-t-30 mg-b-15">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="product-payment-inner-st">
							<h3 style="text-align: center">
								Thêm sim
								</h2>
								<div class="row">
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="review-content-section">
											<div id="dropzone1" class="pro-ad addcoursepro">
												<form action="#"
													class="dropzone dropzone-custom needsclick add-professors"
													id="demo1-upload" data-toggle="validator" role="form">
													<div class="row">
														<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"
															style="margin-left: 20%; width: 60%">
															<div class="devit-card-custom">
																<div class="form-group">
																<div class="col-sm-4">
																<label for="soSim"><i class="zmdi zmdi-account material-icons-name"></i>Số sim:</label></div>
																<div class="col-sm-8">
																	<input type="number" id="soSim" name="soSim" class="form-control"
																		placeholder="Số sim" required>
																		<div class="help-block with-errors" style="color: red"></div>
																		</div>
																</div>
																<div class="form-group">
																<div class="col-sm-4">
																<label for="giaSim"><i class="zmdi zmdi-account material-icons-name"></i>Giá sim:</label></div>
																<div class="col-sm-8">
																	<input type="number" id="giaSim" name="giaSim" class="form-control"
																		placeholder="Giá sim" required>
																		<div class="help-block with-errors" style="color: red"></div>
																		</div>
																</div>
																<div class="form-group">
																<div class="col-sm-4">
																<label for="diem"><i class="zmdi zmdi-account material-icons-name"></i>Điểm:</label></div>
																<div class="col-sm-8">
																	<input type="number" id="diem" name="diem" class="form-control"
																		placeholder="Điểm" required>
																		<div class="help-block with-errors" style="color: red"></div>
																		</div>
																</div>
																<div class="form-group">
																<div class="col-sm-4">
																<label for="tongNut"><i class="zmdi zmdi-account material-icons-name"></i>Tổng nút:</label></div>
																<div class="col-sm-8">
																	<input type="number" id="tongNut" name="tongNut" class="form-control"
																		placeholder="Tổng nút" required>
																		<div class="help-block with-errors" style="color: red"></div>
																		</div>
																</div>
																<div class="form-group">
																<div class="col-sm-4">
																<label for="loaiSim"><i class="zmdi zmdi-account material-icons-name"></i>Loại sim:</label></div>
																<div class="col-sm-8">
																	<input type="text" id="loaiSim" name="loaiSim" class="form-control"
																		placeholder="Loại sim" required>
																		<div class="help-block with-errors" style="color: red"></div>
																		</div>
																</div>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-lg-12">
															<div class="payment-adress">
															<i><div id="btnDisableErr" style="color: red"></div></i>
																<button type="submit"
																	class="btn btn-primary waves-effect waves-light" id="btnSubmit">Lưu</button>
															</div>
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>
	<script
		src="<c:url value="/resource/admin/js/vendor/jquery-1.12.4.min.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/wow.min.js"/>"></script>
	<script
		src="<c:url value="/resource/admin/js/jquery-price-slider.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/jquery.meanmenu.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/owl.carousel.min.jss"/>"></script>
	<script src="<c:url value="/resource/admin/js/jquery.sticky.js"/>"></script>
	<script
		src="<c:url value="/resource/admin/js/jquery.scrollUp.min.js"/>"></script>
	<script
		src="<c:url value="/resource/admin/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"/>"></script>
	<script
		src="<c:url value="/resource/admin/js/scrollbar/mCustomScrollbar-active.js"/>"></script>
	<script
		src="<c:url value="/resource/admin/js/metisMenu/metisMenu.min.js"/>"></script>
	<script
		src="<c:url value="/resource/admin/js/metisMenu/metisMenu-active.js"/>"></script>
	<script
		src="<c:url value="/resource/admin/js/data-table/bootstrap-table.js"/>"></script>
	<script
		src="<c:url value="/resource/admin/js/data-table/tableExport.js"/>"></script>
	<script
		src="<c:url value="/resource/admin/js/data-table/data-table-active.js"/>"></script>
	<script
		src="<c:url value="/resource/admin/js/data-table/bootstrap-table-editable.js"/>"></script>
	<script
		src="<c:url value="/resource/admin/js/data-table/bootstrap-editable.js"/>"></script>
	<script
		src="<c:url value="/resource/admin/js/data-table/bootstrap-table-resizable.js"/>"></script>
	<script
		src="<c:url value="/resource/admin/js/data-table/colResizable-1.5.source.js"/>"></script>
	<script
		src="<c:url value="/resource/admin/js/data-table/bootstrap-table-export.js"/>"></script>
	<script
		src="<c:url value="/resource/admin/js/editable/jquery.mockjax.js"/>"></script>
	<script
		src="<c:url value="/resource/admin/js/editable/mock-active.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/editable/select2.js"/>"></script>
	<script
		src="<c:url value="/resource/admin/js/editable/moment.min.js"/>"></script>
	<script
		src="<c:url value="/resource/admin/js/editable/bootstrap-datetimepicker.js"/>"></script>
	<script
		src="<c:url value="/resource/admin/js/editable/bootstrap-datetimepicker.js"/>"></script>
	<script
		src="<c:url value="/resource/admin/js/editable/bootstrap-editable.js"/>"></script>
	<script
		src="<c:url value="/resource/admin/js/editable/xediable-active.js"/>"></script>
	<script
		src="<c:url value="/resource/admin/js/chart/jquery.peity.min.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/peity/peity-active.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/tab.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/plugins.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/main.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/tawk-chat.js"/>"></script>
	<script type="text/javascript">
	$(document).ready(function() {
        $('#btnSubmit').click(function () {
            if ($('#soSim').val() == '' || $('#giaSim').val() == ''  
            	|| $('#diem').val() == '' 
            	|| $('#tongNut').val() == '' || $('#loaiSim').val() == '') {
                $('#btnDisableErr').text("Bạn cần điền đầy đủ thông tin");
            } else {
            	$('#btnDisableErr').text("");
            }
        });
    });
	</script>
</body>
</html>
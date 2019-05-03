<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add user</title>
<link rel="shortcut icon" type="image/x-icon" href="<c:url value="/resource/admin/img/favicon.ico"/>">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900"
	rel="stylesheet">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/bootstrap.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/font-awesome.min.css"/>">
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
<script src="<c:url value="/resource/admin/js/validator.js"/>"
	type="text/javascript"></script>
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
							<h3 style="text-align: center">Thêm người dùng</h3>
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
																<label for="hoDem"><i
																	class="zmdi zmdi-account material-icons-name"></i></label> <input
																	type="text" class="form-control" id="hoDem"
																	name="hoDem" placeholder="Họ đệm" required>
																<div class="help-block with-errors" style="color: red"></div>
															</div>
															<div class="form-group">
																<label for="ten"><i
																	class="zmdi zmdi-account material-icons-name"></i></label> <input
																	type="text" class="form-control" id="ten" name="ten"
																	placeholder="Tên" required>
																<div class="help-block with-errors" style="color: red"></div>
															</div>
															<div class="form-group">
																<label for="gioiTinh"><i
																	class="zmdi zmdi-account material-icons-name"></i></label> Giới
																tính &nbsp;&nbsp; <label> <input type="radio"
																	id="gioiTinh" name="optradio" checked>Nam
																	&nbsp; <input type="radio" id="gioiTinh"
																	name="optradio" checked>Nữ
																</label>
																<div class="help-block with-errors" style="color: red"></div>
															</div>
															<div class="form-group">
																<label for="username"><i
																	class="zmdi zmdi-account material-icons-name"></i></label> <input
																	type="text" class="form-control" id="username"
																	name="username" placeholder="Tên đăng nhập" required>
																<div class="help-block with-errors" style="color: red"></div>
															</div>
															<div class="form-group">
																<label for="email"><i
																	class="zmdi zmdi-account material-icons-name"></i></label> <input
																	type="text" class="form-control" id="email"
																	name="email" placeholder="Email" required>
																<div class="help-block with-errors" style="color: red"></div>
															</div>
															<div class="form-group">
																<label for="phone"><i
																	class="zmdi zmdi-account material-icons-name"></i></label> <input
																	type="number" class="form-control" id="phone"
																	name="phone" placeholder="Số điện thoại" required>
																<div class="help-block with-errors" style="color: red"></div>
															</div>
															<div class="form-group">
																<label for="address"><i
																	class="zmdi zmdi-account material-icons-name"></i></label> <input
																	type="address" class="form-control" id="address"
																	name="address" placeholder="Địa chỉ" required>
																<div class="help-block with-errors" style="color: red"></div>
															</div>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-lg-12">
														<div class="payment-adress">
															<button type="submit"
																class="btn btn-primary waves-effect waves-light">Lưu</button>
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
</body>
</html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update user</title>
<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value="/resource/admin/img/favicon.ico"/>">
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
<script
	src="<c:url value="/resource/admin/js/vendor/modernizr-2.8.3.min.js"/>"></script>
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
							<ul id="myTabedu1" class="tab-review-design">
								<li class="active"><a href="#description">User Details</a></li>
								<li><a href="#reviews"> Update user</a></li>
							</ul>
							<div id="myTabContent" class="tab-content custom-product-edit">
								<div class="product-tab-list tab-pane fade active in"
									id="description">
									<div class="row">
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="review-content-section">
												<div id="dropzone1" class="pro-ad addcoursepro">
													<form action="updateUser" method="post"
														class="dropzone dropzone-custom needsclick add-professors"
														id="demo1-upload">
														<div class="row">
															<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"
																style="margin-left: 20%; width: 60%; border: 1px solid #a09f9f; border-radius: 10px;">
																<br>
																<div class="devit-card-custom">
																	<p>Họ đệm:</p>
																	<p>Tên:</p>
																	<p>Giới tính:</p>
																	<p>Tên đăng nhập:</p>
																	<p>Email:</p>
																	<p>Số điện thoại</p>
																	<p>Địa chỉ:</p>
																</div>
															</div>
														</div>
														<br>
														<div class="row">
															<div class="col-lg-12">
																<div class="payment-adress">
																	<button type="submit" style="margin-right: 25%"
																		class="btn btn-primary waves-effect waves-light pull-right">Back</button>
																</div>
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="product-tab-list tab-pane fade" id="reviews">
									<div class="row">
										<form action="${pageContext.request.contextPath}/createUser"
											method="post"
											class="dropzone dropzone-custom needsclick add-professors"
											id="demo1-upload" data-toggle="validator" role="form">
											<div class="row">
												<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"
													style="margin-left: 20%; width: 60%">
													<div class="devit-card-custom">
														<div class="form-group">
															<label>Username: ${user.username}</label>
														</div>
														<div class="form-group">
															<label for="hoDem" class="col-sm-3 col-form-label">Họ<i
																class="zmdi zmdi-account material-icons-name"></i></label>
															<div class="col-sm-9">
																<input type="text" class="form-control" id="hoDem"
																	name="lName" value="${user.lName}" placeholder="Họ"
																	required><br>
															</div>
															<div class="help-block with-errors" style="color: red"></div>
														</div>
														<div class="form-group">
															<label for="ten" class="col-sm-3 col-form-label">Tên<i
																class="zmdi zmdi-account material-icons-name"></i></label>
															<div class="col-sm-9">
																<input type="text" class="form-control" id="ten"
																	name="fName" value="${user.fName}" placeholder="Tên"
																	required><br>
															</div>
															<br>
															<div class="help-block with-errors" style="color: red"></div>
														</div>
														<input type="hidden" name="sex" value="${user.sex}">
														<input type="hidden" name="username"
															value="${user.username}"><br>

														<div class="form-group">
															<label for="email" class="col-sm-3 col-form-label">Email<i
																class="zmdi zmdi-account material-icons-name"></i></label>
															<div class="col-sm-9">
																<input type="text" class="form-control" id="email"
																	name="email" value="${user.email}" placeholder="Email"
																	required><br>
																	<input type="hidden" class="form-control" id="emailUser"
																	 value="${user.email}">
															</div>
															<div class="help-block with-errors" style="color: red"></div>
															<p id="emailErr" style="color: red"></p>
														</div>
														<div class="form-group">
															<label for="inputPass" class="col-sm-3 col-form-label">Mật
																khẩu<i class="zmdi zmdi-account material-icons-name"></i>
															</label>
															<div class="col-sm-9">
																<input type="password" class="form-control"
																	id="inputPass" value="${user.password}" name="password"
																	placeholder="Mật khẩu" minlength="6" required><br>
															</div>
															<div class="help-block with-errors" style="color: red"></div>
														</div>
														<div class="form-group">
															<label for="inputRepass" class="col-sm-3 col-form-label">Nhập
																lại mật khẩu<i
																class="zmdi zmdi-account material-icons-name"></i>
															</label>
															<div class="col-sm-9">
																<input type="password" class="form-control"
																	id="inputRepass" value="${user.password}"
																	name="rePassword" placeholder="Nhập lại mật khẩu"
																	minlength="6" required><br>
															</div>
															<div class="help-block with-errors" style="color: red"></div>
															<div id="message" style="color: red"></div>
														</div>

														<div class="form-group">
															<label for="phone" class="col-sm-3 col-form-label">Số
																điện thoại<i
																class="zmdi zmdi-account material-icons-name"></i>
															</label>
															<div class="col-sm-9">
																<input type="number" class="form-control" id="phone"
																	value="${user.phone}" name="phone"
																	placeholder="Số điện thoại" required><br>
															</div>
															<div class="help-block with-errors" style="color: red"></div>
														</div>
														<div class="form-group">
															<label for="address" class="col-sm-3 col-form-label">Địa
																chỉ<i class="zmdi zmdi-account material-icons-name"></i>
															</label>
															<div class="col-sm-9">
																<input type="address" class="form-control" id="address"
																	value="${user.adress}" name="address"
																	placeholder="Địa chỉ" required><br>
															</div>
															<div class="help-block with-errors" style="color: red"></div>
														</div>
														<div class="form-group">
															<label for="address" class="col-sm-3 col-form-label">Quyền<i
																class="zmdi zmdi-account material-icons-name"></i>
															</label>
															<div class="col-sm-9">
																<select id="inputState" class="form-control" required>
																	<option  value="2">Admin</option>
																	<option selected value="1">User</option>
																</select><br>
															</div>
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

	<script src="<c:url value="./resource/js/validator.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value="./resource/js/validator.js"/>"
		type="text/javascript"></script>
	<script>
		$('#inputPass').on(
				'keyup',
				function() {
					if ($('#inputPass').val() == $('#inputRepass').val()) {
						$('#message').html('');
					} else {
						if ($('#inputRepass').val().length > 0) {
							$('#message').html(
									'Mật khẩu nhập lại không trùng khớp').css(
									'color', 'red');
						}
					}
				});
		$('#inputRepass').on(
				'keyup',
				function() {
					if ($('#inputPass').val() == $('#inputRepass').val()) {
						$('#message').html('');
					} else {
						if ($('#inputPass').val().length > 0) {
							$('#message').html(
									'Mật khẩu nhập lại không trùng khớp').css(
									'color', 'red');
						}
					}
				});

		$(document).ready(function() {
			$('#email').keyup(function() {
				if($('#email').val() != $('#emailUser').val()){
				checkEmailIsExist();
				}
			});

		});

		function checkEmailIsExist() {
			$.ajax({
				type : "POST",
				url : '${pageContext.request.contextPath}/checkEmail',
				dataType : 'json',
				data : {
					email : $('#email').val()
				},
				success : function(data) {
					if (data.number > 0) {
						$("#emailErr").text("Email này đã được đăng ký");
					} else {
						$("#emailErr").text("");
					}
				},
				error : function(xhr, ajaxOptions, thrownError) {
					//On error, we alert user
					alert(thrownError);
				},
				complete : function() {
					//alert('update success'); 
				}
			});
		}
	</script>
</body>
</html>
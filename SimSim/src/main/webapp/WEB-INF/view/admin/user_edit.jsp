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
																<br> <span
																	style="color: green; font-style: italic;">${mess}</span>
																<br>
																<div class="devit-card-custom">
																	<p>
																		Tên: <span style="font-weight: bold;">
																			${user.lName} ${user.fName} </span>
																	</p>
																	<p>
																		Giới tính: <span style="font-weight: bold;">
																			${user.sex} </span>
																	</p>
																	<p>
																		Tên đăng nhập: <span style="font-weight: bold;">
																			${user.username} </span>
																	</p>
																	<p>
																		Email: <span style="font-weight: bold;">
																			${user.email} </span>
																	</p>
																	<p>
																		Số điện thoại: <span style="font-weight: bold;">
																			${user.phone} </span>
																	</p>
																	<p>
																		Địa chỉ: <span style="font-weight: bold;">
																			${user.adress} </span>
																	</p>
																</div>
															</div>
														</div>
														<br>
														<div class="row">
															<div class="col-lg-12">
																<div class="payment-adress">
																	<a
																		href="${pageContext.request.contextPath}/admin/user/table">
																		<button type="button" style="margin-right: 25%"
																			class="btn btn-primary waves-effect waves-light pull-right">Trở
																			về</button>
																	</a>
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
										<form
											action="${pageContext.request.contextPath}/admin/user/updateUser"
											method="post"
											class="dropzone dropzone-custom needsclick add-professors"
											id="demo1-upload" data-toggle="validator" role="form">
											<div class="row">
												<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"
													style="margin-left: 20%; width: 60%;">
													<div class="devit-card-custom">
														<div class="form-group">
															<div class="col-sm-4">Username:</div>
															<div class="col-sm-8">
																<label> ${user.username}</label>
															</div>
														</div>
														<br>
														<div class="form-group">
															<label for="hoDem" class="col-sm-4 col-form-label">Họ<i
																class="zmdi zmdi-account material-icons-name"></i></label>
															<div class="col-sm-8">
																<input type="text" class="form-control" id="hoDem"
																	name="lName" value="${user.lName}" placeholder="Họ"
																	required>
																<div class="help-block with-errors" style="color: red"></div>
															</div>
															<br>
														</div>
														<div class="form-group">
															<label for="ten" class="col-sm-4 col-form-label">Tên<i
																class="zmdi zmdi-account material-icons-name"></i></label>
															<div class="col-sm-8">
																<input type="text" class="form-control" id="ten"
																	name="fName" value="${user.fName}" placeholder="Tên"
																	required>
																<div class="help-block with-errors" style="color: red"></div>
															</div>
														</div>
														<input type="hidden" name="sex" value="${user.sex}">
														<input type="hidden" name="username"
															value="${user.username}">

														<div class="form-group">
															<label for="email" class="col-sm-4 col-form-label">Email<i
																class="zmdi zmdi-account material-icons-name"></i></label>
															<div class="col-sm-8">
																<input type="Email" class="form-control" id="email"
																	name="email" value="${user.email}" placeholder="Email"
																	required> <input type="hidden"
																	class="form-control" id="emailUser"
																	value="${user.email}">

																<div class="help-block with-errors" style="color: red"></div>
															</div>
															<div class="col-sm-4"></div>
															<div class="col-sm-8">
																<p id="emailErr" style="color: red"></p>
															</div>
														</div>
														<div class="form-group">
															<label for="inputPass" class="col-sm-4 col-form-label">Mật
																khẩu<i class="zmdi zmdi-account material-icons-name"></i>
															</label>
															<div class="col-sm-8">
																<input type="password" class="form-control"
																	id="inputPass" value="${user.password}" name="password"
																	placeholder="Mật khẩu" minlength="6" required>
																<div class="help-block with-errors" style="color: red"></div>
															</div>
														</div>
														<div class="form-group">
															<label for="inputRepass" class="col-sm-4 col-form-label">Nhập
																lại mật khẩu<i
																class="zmdi zmdi-account material-icons-name"></i>
															</label>
															<div class="col-sm-8">
																<input type="password" class="form-control"
																	id="inputRepass" value="${user.password}"
																	name="rePassword" placeholder="Nhập lại mật khẩu"
																	minlength="6" required>
															</div>
															<div class="col-sm-4"></div>
															<div class="col-sm-8">
																<div class="help-block with-errors" style="color: red"></div>
																<p id="message" style="color: red"></p>
															</div>
														</div>

														<div class="form-group">
															<label for="phone" class="col-sm-4 col-form-label">Số
																điện thoại<i
																class="zmdi zmdi-account material-icons-name"></i>
															</label>
															<div class="col-sm-8">
																<input type="number" class="form-control" id="phone"
																	value="${user.phone}" name="phone"
																	placeholder="Số điện thoại" required>
																<div class="help-block with-errors" style="color: red"></div>
															</div>
														</div>
														<div class="form-group">
															<label for="address" class="col-sm-4 col-form-label">Địa
																chỉ<i class="zmdi zmdi-account material-icons-name"></i>
															</label>
															<div class="col-sm-8">
																<input type="address" class="form-control" id="address"
																	value="${user.adress}" name="address"
																	placeholder="Địa chỉ" required>
																<div class="help-block with-errors" style="color: red"></div>
															</div>
														</div>
														<div class="form-group">
															<label for="quyen" class="col-sm-4 col-form-label">Quyền<i
																class="zmdi zmdi-account material-icons-name"></i>
															</label>
															<div class="col-sm-8">
																<select name="role" id="quyen" class="form-control"
																	required>
																	<option value="2">Admin</option>
																	<option selected value="1">User</option>
																</select>

																<div class="help-block with-errors" style="color: red"></div>
															</div>
														</div>
														<div class="form-group">
															<label for="state" class="col-sm-4 col-form-label">Trạng
																thái<i class="zmdi zmdi-account material-icons-name"></i>
															</label>
															<div class="col-sm-8">
																<select name="enabled" id="state" class="form-control"
																	required>
																	<option selected value="1">Khả dụng</option>
																	<option value="0">Vô hiệu hóa</option>
																</select>
																<div class="help-block with-errors" style="color: red"></div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-lg-12">
												
													<div class="payment-adress">
													<div id="btnDisableErr" style="color: red"></div>
														<a
															href="${pageContext.request.contextPath}/admin/user/table">
															<button type="button"
																class="btn btn-info cancle">Hủy</button>
														</a>
														<button type="submit"
															class="btn btn-success waves-effect waves-light" id="btnSubmit">Lưu</button>
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
				if ($('#email').val() != $('#emailUser').val()) {
					checkEmailIsExist();
				}
			});

		});

		function checkEmailIsExist() {
			// 			if($('#email').val() != $('#emailUser').val()){
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
			// 			}
		}
		
		$(document).ready(function() {
        $('#btnSubmit').click(function () {
            if ($('#hoDem').val() == '' || $('#ten').val() == '' || $('#email').val() == '' 
            	|| $('#inputPass').val() == '' || $('#inputRepass').val() == ''
            	|| $('#phone').val() == '' || $('#address').val() == '') {
                $('#btnDisableErr').text("Bạn cần điền đầy đủ thông tin");
            } else {
            	$('#btnDisableErr').text("");
            }
        });
    });
	</script>
</body>
</html>
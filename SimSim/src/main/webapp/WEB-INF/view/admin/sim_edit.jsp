<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update sim</title>
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
<script src="<c:url value="/resource/js/validator.js"/>"
	type="text/javascript"></script>
<script
	src="<c:url value="/resource/admin/js/vendor/modernizr-2.8.3.min.js"/>"></script>
<script src="<c:url value="/resource/js/validator.js"/>"></script>
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
							<ul id="myTabedu1" class="tab-review-design">
								<li class="active"><a href="#description">SIM Details</a></li>
								<li><a href="#reviews"> Update SIM</a></li>
							</ul>
							<div id="myTabContent" class="tab-content custom-product-edit">
								<div class="product-tab-list tab-pane fade active in"
									id="description">
									<div class="row">
										<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"></div>
										<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
											<div class="review-content-section">
												<div id="dropzone1" class="pro-ad addcoursepro">
													<form action="#"
														class="dropzone dropzone-custom needsclick add-professors"
														id="demo1-upload">
														<div class="row">
															<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"
																style="margin-left: 20%; width: 60%; border: 1px solid #a09f9f; border-radius: 10px;">
																<br>
																<div class="devit-card-custom">
																	<p>
																		Số sim: <span style="font-weight: bolder;">${sim.realNumber}</span>
																	</p>
																	<p>
																		<fmt:setLocale value="VN" scope="session" />
																		Giá : <span style="font-weight: bolder;"><fmt:formatNumber
																				value="${sim.price}" type="currency"
																				currencySymbol="" />VNĐ</span>

																	</p>
																	<c:if test="${sim.dealPrice != null}">
																		<p>
																			Giá giảm: <span style="font-weight: bolder;">${sim.dealPrice}</span>
																		</p>
																	</c:if>
																	<p>
																		Số nút: <span style="font-weight: bolder;">${sim.score}</span>
																	</p>
																	<p>
																		Trạng thái:
																		<c:if test="${sim.enabled == 1}">
																			<span style="font-weight: bolder;"> Enabled</span>
																		</c:if>
																		<c:if test="${sim.enabled == 0}">
																			<span style="font-weight: bolder;"> Disabled</span>
																		</c:if>
																	</p>
																	<p>
																		Tổng điểm: <span style="font-weight: bolder;">${sim.sumOfNumbers}</span>
																	</p>
																	<p>
																		Loại sim: <span style="font-weight: bolder;">${sim.simType.name}</span>
																	</p>
																</div>
															</div>
														</div>
														<br>
														<div class="row">
															<div class="col-lg-7">
																<div class="payment-adress">
																	<a
																		href="${pageContext.request.contextPath}/admin/sim/table"><button
																			type="button" style="margin-right: 25%"
																			class="btn btn-primary waves-effect waves-light pull-right">Trở
																			về</button> </a>
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
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="review-content-section">
												<form data-toggle="validator" role="form" action="${pageContext.request.contextPath}/admin/sim/updateSim" method="post">
													<div class="row">
														<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"
															style="margin-left: 20%; width: 60%">
															<div class="devit-card-custom">
																<div class="form-group">
																	<div class="col-sm-4">
																		<label for="soSim"><i
																			class="zmdi zmdi-account material-icons-name"></i>Số
																			sim: </label>
																	</div>
																	<div class="col-sm-8">
																		<input type="hidden" value="${sim.realNumber}" id="soSimGoc"> 
																		<input type="hidden" value="${sim.id}" name="simId"> 
																		<input type="text" class="form-control" id="soSim" name="realNumber"
																			value="${sim.realNumber}" placeholder="Số sim"
																			required>
																		<div class="help-block with-errors" style="color: red"></div>
																		<div id="simNumberErr" class="help-block with-errors"
																			style="color: red"></div>
																	</div>
																</div>
																<div class="form-group">
																	<div class="col-sm-4">
																		<label for="giaSim"><i
																			class="zmdi zmdi-account material-icons-name"></i>Nhà
																			mạng: </label>
																	</div>
																	<div class="col-sm-8">
																		<select id="networdId" class="form-control strong"
																			name="networdId">
																			<option value="${sim.netword.id}">${sim.netword.name}</option>
																			<option value="1">Viettel</option>
																			<option value="2">Mobifone</option>
																			<option value="3">Vinaphone</option>
																			<option value="4">Vietnamobile</option>
																			<option value="5">Gmobile</option>
																		</select>
																		<div class="help-block with-errors" style="color: red"></div>
																	</div>
																</div>
																<div class="form-group">
																	<div class="col-sm-4">
																		<label for="giaSim"><i
																			class="zmdi zmdi-account material-icons-name"></i>Giá:
																		</label>
																	</div>
																	<div class="col-sm-8">
																		<input type="text" class="form-control" id="giaSim"
																			name="price" value="${sim.price}" placeholder="Giá"
																			required>
																		<div class="help-block with-errors" style="color: red"></div>
																	</div>
																</div>
																<div class="form-group">
																	<div class="col-sm-4">
																		<label for="giamGia"><i
																			class="zmdi zmdi-account material-icons-name"></i>Giá
																			giảm: </label>
																	</div>
																	<div class="col-sm-8">
																		<input type="text" class="form-control" id="dealPrice"
																			name="dealPrice" value="${sim.dealPrice}"
																			placeholder="Giá giảm" >
																	</div>
																</div>
																<div class="form-group">
																	<div class="col-sm-4">
																		<label for="trangThai"><i
																			class="zmdi zmdi-account material-icons-name"></i>Trạng
																			thái: </label>
																	</div>
																	<div class="col-sm-8">
																		<div class="form-group">
																			<select class="form-control" id="enabled"
																				name="enabled">
																				<c:if test="${sim.enabled == 1}">
																					<option value="1" selected="selected">Enable</option>
																					<option value="0">Disable</option>
																				</c:if>
																				<c:if test="${sim.enabled == 0}">
																					<option value="1">Enable</option>
																					<option value="0" selected="selected">Disable</option>
																				</c:if>
																			</select>
																		</div>
																		<div class="help-block with-errors" style="color: red"></div>
																	</div>
																</div>
																<div class="form-group">
																	<div class="col-sm-4">
																		<label for="loaiSim"><i
																			class="zmdi zmdi-account material-icons-name"></i>Loại
																			sim: </label>
																	</div>
																	<div class="col-sm-8">
																		<select id="simTypeId" class="form-control strong"
																			name="simTypeId">
																			<option value="${sim.simType.id}" selected="selected">${sim.simType.name}</option>
																			<option value="21">Sim thường</option>
																			<option value="1">Sim Tứ Quý</option>
																			<option value="2">Sim Ngũ Quý</option>
																			<option value="3">Sim Lộc Phát</option>
																			<option value="4">Sim Thần Tài</option>
																			<option value="5">Sim ông địa</option>
																			<option value="6">Sim tiến đơn</option>
																			<option value="7">Sim Tiến đôi</option>
																			<option value="8">Sim Taxi 2</option>
																			<option value="9">Sim Taxi 3</option>
																			<option value="10">Sim Taxi 4</option>
																			<option value="11">Sim Lặp</option>
																			<option value="12">Sim kép</option>
																			<option value="13">Sim đối</option>
																			<option value="14">Sim Đảo</option>
																			<option value="15">Sim gánh</option>
																			<option value="16">Sim Đặc Biệt</option>
																			<option value="17">Sim Năm Sinh</option>
																			<option value="18">Sim đầu số cổ</option>
																			<option value="19">Sim tam Hoa Đơn</option>
																			<option value="20">Sim tam Hoa Kép</option>
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
																<a href="${pageContext.request.contextPath}/admin/sim/table"><button
																		type="button" class="btn btn-primary waves-effect waves-light">Trở về</button> </a>
																<button type="submit"
																	class="btn btn-primary waves-effect waves-light"
																	id="btnSubmit">Lưu</button>
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
		$(document).ready( function() {
					$('#btnSubmit').click(
							function() {
								if ($('#soSim').val() == ''
										|| $('#giaSim').val() == ''
										|| $('#trangThai').val() == '') {
									$('#btnDisableErr').text(
											"Bạn cần điền đầy đủ thông tin");
								} else {
									$('#btnDisableErr').text("");
								}
							});
					
					$('#soSim').keyup(function() {
						if( $('#soSim').val() != $('#soSimGoc').val()){
		                checksimIsExist();
						}
		            });
					
				});
		
		function checksimIsExist(){
            $.ajax({
                type: "POST", 
                url: '${pageContext.request.contextPath}/checksimIsExist', 
                dataType: 'json',
                 data: {
                	 simNumber: $('#soSim').val()
                 },
                success: function(data) {
                    if(data == true){
                        $("#simNumberErr").text("Sim này đã tồn tại");
                    }else{
                        $("#simNumberErr").text("");
                    }
                },
                error: function(xhr, ajaxOptions, thrownError) {
                    //On error, we alert user
                    alert(thrownError);
                },
                complete: function() {
                    //alert('update success'); 
                }
            });
        }
	</script>

</body>
</html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Giỏ hàng</title>
<link href="<c:url value="/resource/css/main.css"/>" rel="stylesheet"
	type="text/css" />
<link
	href="<c:url value="/resource/bootstrap-3.4.1-dist/css/bootstrap.min.css"/>"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/resource/css/datsim.css"/>" rel="stylesheet"
	type="text/css" />
</head>

<body>
	<c:set var="context" value="${pageContext.request.contextPath}" />
	<div class="container-fluid">
	<%@ include file="top_elements.jsp"%>

		<div class="container">
			<div class="row" id="row123">
				<div class="banner hidden-xs" style="vertical-align: top;"></div>
				<div class="clearfix"></div>
				<%@ include file="menu_top.jsp"%>
				<div class="clearfix"></div>
				<div id="left">
					<div class="panel panel-primary" id="leftmenu">
						<div class="panel-heading hidden-xs">
							<h2 class="panel-title">
								<i class="glyphicon glyphicon-list"></i> Tìm sim theo các mạng
							</h2>
						</div>
						<nav class="navbar-default" role="navigation">
							<div class="panel panel-default visible-xs" id="search_box1"
								style="background: #f5f5f5">
								<div class="text-center">
									<div class="stv-search-bg text-primary"
										style="font-size: 32px; margin-top: 2px"></div>
									<div style="margin-top: -28px;" class="txttim">TÌM SIM SỐ
										ĐẸP</div>

								</div>
								<div class="panel-body">
									<form id="search" action="index.php" class="form-horizontal"
										style="margin: 0; padding: 0;">
										<input name="do" value="search" type="hidden"> <input
											type="hidden" name="submit" value="true" />
										<div class="form-group">
											<div class="col-md-4 col-xs-12 col-lg-4">
												<div class="row">
													<select name="network" class="form-control"
														style="font-size: 14px;">
														<option value="0">Chọn mạng di động</option>
														<option value="1">Viettel</option>
														<option value="2">Mobifone</option>
														<option value="3">Vinaphone</option>
														<option value="4">Vietnamobile</option>
														<option value="5">Gmobile</option>
													</select>
												</div>
											</div>
											<div class="col-md-4 col-xs-6 col-lg-4 showgia ">
												<div class="input-group">
													<div class="input-group-addon font-12">Giá từ:</div>
													<input name="giatu" class="form-control price" type="tel"
														placeholder="100,000" />
												</div>
											</div>
											<div class="col-md-4 col-xs-6 col-lg-4 showgia">
												<div class="input-group">
													<div class="input-group-addon font-12">Đến:</div>
													<input name="den" class="form-control price" type="tel"
														placeholder="1,000,000" />
												</div>
											</div>
										</div>
										<div class="form-group" id="tsmb1" style="padding: 8px;">
											<a href=""> <img alt="" id="anh1" height="44px"
												src="/data/favicon/logo.png"
												style="display: none; margin-left: 36px;" width="44px"></a>
											<div class="input-group">
												<input name="sim" id="sim" type="tel" value=""
													class="form-control pull-left popover-dismiss"
													placeholder="Nhập số sim bạn cần tìm" data-container="body"
													data-toggle="popover" data-placement="bottom"
													data-content=" - Sử dụng dấu <span class='red'>x</span> đại điện cho 1 số và dấu <span class='red'>*</span> đại điện cho một chuỗi số. <br /> + Để tìm sim bắt đầu bằng 098, quý khách nhập vào 098*<br /> + Để tìm sim kết thúc bằng 888, quý khách nhập vào *888<br /> + Để tìm sim bắt đầu bằng 098 và kết thúc bằng 888, nhập vào 098*888<br /> + Để tìm sim bên trong có số 888, nhập vào 888<br /> + Để tìm sim bắt đầu bằng 098 và kết thúc bằng 808, 818, 828, 838, 848, 858, 868, 878, 888, 898 nhập vào 098*8x8<br /> "
													title="Hướng dẫn tìm kiếm sim" /> <span
													class="input-group-btn">
													<button class="btn btn-warning strong" id="timsimx">Tìm
														sim</button>
												</span>
											</div>
										</div>
										<div class="form-group text-center">
											<strong class="state-danger font-12">Ví dụ:</strong> &nbsp; <a
												rel="nofollow" href="*888" class="hotkey">*888</a>, <a
												rel="nofollow" href="0912*68" class="hotkey">0912*68</a>, <a
												rel="nofollow" href="090*888" class="hotkey">090*888</a>, <a
												rel="nofollow" href="0913*" class="hotkey">0913*</a>, <a
												rel="nofollow" href="*6688" class="hotkey">*6688</a>
										</div>
										<div class="form-group text-center">
											Sim 10 số <input type="radio" value="0" name="type" />&nbsp;
											&nbsp;Sim 11 số <input type="radio" value="1" name="type" />
										</div>
										<div class="form-group">
											<a href="#" class="pull-right" id="timnangcao"
												style="margin-right: 50px;"> <strong class="text-danger">Tìm
													kiếm nâng cao</strong>
											</a>
										</div>
										<div class="form-group text-center fullsearch"
											style="display: none;">
											Dãy số không gồm: <input name="n[]" value="1" type="checkbox">
											<span> 1 </span> <input name="n[]" value="2" type="checkbox">
											<span> 2 </span> <input name="n[]" value="3" type="checkbox">
											<span> 3 </span> <input name="n[]" value="4" type="checkbox">
											<span> 4 </span> <input name="n[]" value="5" type="checkbox">
											<span> 5 </span> <input name="n[]" value="6" type="checkbox">
											<span> 6 </span> <input name="n[]" value="7" type="checkbox">
											<span> 7 </span> <input name="n[]" value="8" type="checkbox">
											<span> 8 </span> <input name="n[]" value="9" type="checkbox">
											<span> 9 </span>
										</div>
										<div class="form-group text-center fullsearch"
											style="display: none;">
											<div class="col-md-4 col-xs-6 col-md-offset-2">
												<div class="input-group">
													<div class="input-group-addon font-12">Tổng điểm:</div>
													<input name="tongdiem" maxlength="2"
														class="form-control mp0 " type="tel" placeholder=" < 81" />
												</div>
											</div>
											<div class="col-md-4 col-xs-6">
												<div class="input-group">
													<div class="input-group-addon font-12">Tổng Nút:</div>
													<input name="tongnut" maxlength="2"
														class="form-control mp0 " type="tel" placeholder=" 1 -10" />
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
							<%@ include file="menu_left.jsp"%>
							<input name="submit" value="true" type="hidden" />
						</nav>
					</div>
				</div>
			</div>
			<div class="" id="main">
				<script src="<c:url value="/resource/js/datsim.js"/>"
					type="text/javascript"></script>
				<script src="<c:url value="/resource/js/datsim1.js"/>"
					type="text/javascript"></script>
				<style>
#search_box1 {
	display: none !important;
}
</style>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h2 class="panel-title">Đặt mua sim</h2>
					</div>
					<div class="panel-body">
						<form class="form-horizontal" method="" id="ordered"
							action="${context}/user/pay" onsubmit="return checkorder()">
							<table class="table table-hover table-condensed table-bordered">
								<thead>
									<tr>
										<th class="active text-center col-md-1">Chọn</th>
										<th class="active text-center col-md-1">STT</th>
										<th class="active text-center">Số sim</th>
										<th class="active text-center">Mạng</th>
										<th class="active text-center">Tình trạng</th>
										<th class="active"></th>
									</tr>
								</thead>
								<c:forEach items="${listCart}" var="i" varStatus="loopCounter">
									<tr>
										<td class="center"><c:if test="${i.sim.sold == 0}">
												<input type="checkbox" value="${i.id}" name="listId" />
											</c:if> <c:if test="${i.sim.sold == 1}">
												<input type="checkbox" disabled="${i.id}" name="listId" />
											</c:if></td>
										<td class="center">${loopCounter.count}</td>
										<td><div class="">
												<strong style="size: 16px;">Sim: </strong> <strong
													style="color: red; font-size: 18px;">
													${i.sim.realNumber} </strong> <br> <strong> <fmt:formatNumber
														type="number" maxFractionDigits="3" value="${i.sim.price}" />
												</strong>VNĐ<br>
											</div></td>
										<td class="text-center"><span
											class="network n${i.sim.netword.id}"></span></td>
										<td class="text-center"
											style="font-weight: lighter; font-size: small;"><c:if
												test="${i.sim.sold == 0}">Còn</c:if> <c:if
												test="${i.sim.sold == 1}">Đã bán</c:if></td>
										<td class="text-center"><a
											href="${context}/user/cart/delete?id=${i.id}" class="delcart"
											data-sim="${i.sim.realNumber}"> <i
												class="glyphicon glyphicon-trash text-danger"></i>
										</a></td>
									</tr>
								</c:forEach>
								<tr>
									<td colspan="6" class="active">
										<h5 class="pull-right">
											<%-- 											Tổng tiền: <span id="total"> <fmt:formatNumber --%>
											<%-- 													type="number" maxFractionDigits="3" value="${totalPrice}" /> --%>
											<!-- 											</span> VNĐ  -->
											<!-- 											<input type="submit" value="Thanh toán" /> -->

											<button type="button" class="btn btn-success btn-sm"
												data-toggle="modal" data-target="#myModal">Thanh
												toán</button>
											<!-- Modal -->
											<div class="modal fade" id="myModal" role="dialog">
												<div class="modal-dialog">

													<!-- Modal content-->
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal">&times;</button>
															<h4 class="modal-title">Xác nhận thanh toán</h4>
														</div>
														<div class="modal-body">
															<p>Bạn chắc chắn muốn thanh toán cho những sản phẩm
																đã chọn?</p>
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-sm"
																data-dismiss="modal">Hủy</button>
															<input type="submit" value="Thanh toán"
																class="btn btn-success btn-sm" />
														</div>
													</div>

												</div>
											</div>
										</h5>
									</td>
								</tr>
							</table>
						</form>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h2 class="panel-title">Tin liên quan</h2>
					</div>
					<div class="panel-body">
						<ul style="max-height: 300px; overflow: auto;">
							<li><a href="">Phong Thủy</a></li>
							<li><a href="">Bán sim trả góp</a></li>
							<li><a href="">Cầm cố sim</a></li>
							<li><a href="">Thu Mua Sim</a></li>
							<li><a href="">Thanh toán</a></li>
							<li><a href="">Giới thiệu</a></li>
							<li><a href="">Hướng dẫn</a></li>
							<li><a href="">Liên hệ</a></li>
						</ul>
					</div>
				</div>
			</div>

			<%@ include file="menu_right.jsp"%>
		</div>
	</div>
	<script src="<c:url value="/resource/js/sim.js"/>"
		type="text/javascript"></script>
	<%@ include file="footer.jsp"%>
</body>
</html>

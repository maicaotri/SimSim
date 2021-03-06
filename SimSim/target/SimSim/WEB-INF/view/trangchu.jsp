<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<link href="<c:url value="/resource/css/main.css"/>" rel="stylesheet"
	type="text/css" />
<link
	href="<c:url value="/resource/bootstrap-3.4.1-dist/css/bootstrap.min.css"/>"
	rel="stylesheet" type="text/css" />
</head>

<body>
	<div class="container-fluid">
		<div class="container-fluid tophotline hidden-xs">
			<div class="container">
				<div class="pull-left wow fadeInRight">
					<i class="glyphicon glyphicon-calendar"></i> Hôm nay: 23/03/2019
				</div>
				<div class="cart wow fadeInLeft" data-toggle="modal"
					data-target="#myModal">
					<a href="${pageContext.request.contextPath}/user/cart" class="addcart hidden-xs"> <i
						class="glyphicon glyphicon-shopping-cart font-12 hidden-xs"></i>
						Giỏ hàng <span class="hidden-xs badge" id="cart">0</span>
					</a>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>

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

								</div>
							</div>
							<%@ include file="menu_left.jsp"%>
						</nav>
					</div>
				</div>
			</div>
			<div class="" id="main">
				<div class="panel panel-default hidden-xs" id="search_box">
					<div class="text-center">
						<div class="stv-search-bg text-primary"
							style="font-size: 32px; margin-top: -2px"></div>

					</div>
					<div class="panel-body">
						<form id="search1" action="${pageContext.request.contextPath}/sim/findSim" class="form-horizontal" method="get">
							<div class="form-group">
								<div class="col-md-4 col-xs-12 col-lg-4">
									<div class="row">
										<select name="networdId" class="form-control strong">
											<option value="0">Chọn mạng di động</option>
											<option value="1">Viettel</option>
											<option value="2">Mobifone</option>
											<option value="3">Vinaphone</option>
											<option value="4">Vietnamobile</option>
											<option value="5">Gmobile</option>
										</select>
									</div>
								</div>
								<div class="col-md-4 col-xs-6 col-lg-4 showgia "
									style="margin-right: -15px;">
									<div class="input-group">
										<div class="input-group-addon font-12">Giá từ:</div>
										<input name="priceFrom" class="form-control price"
											placeholder="100,000" />
									</div>
								</div>
								<div class="col-md-4 col-xs-6 col-lg-4 showgia">
									<div class="input-group">
										<div class="input-group-addon font-12">Đến:</div>
										<input name="priceTo" class="form-control price"
											placeholder="10,000,000" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<input name="simFind" type="text" value=""
										class="form-control pull-left popover-dismiss"
										placeholder="Nhập số sim bạn cần tìm" data-container="body"
										data-toggle="popover" data-placement="bottom"
										data-content=" - Sử dụng dấu <span class='red'>
										x</span> đại điện cho 1 số và dấu <span class='red'>*</span> đại điện cho một chuỗi số. <br /> + Để tìm sim bắt đầu bằng 098, quý khách nhập vào 098*<br /> + Để tìm sim kết thúc bằng 888, quý khách nhập vào *888<br /> + Để tìm sim bắt đầu bằng 098 và kết thúc bằng 888, nhập vào 098*888<br /> + Để tìm sim bên trong có số 888, nhập vào 888<br /> + Để tìm sim bắt đầu bằng 098 và kết thúc bằng 808, 818, 828, 838, 848, 858, 868, 878, 888, 898 nhập vào 098*8x8<br /> "
										title="Hướng dẫn tìm kiếm sim" /> <span
										class="input-group-btn">
										<button type="submit" class="btn btn-sm btn-warning strong">Tìm
											sim</button>
									</span>
								</div>
							</div>
							<div class="form-group text-center">
								<strong class="red font-12">Hot key:</strong> <span
									class="hotkey"> <a rel="nofollow" href="" class="hotkey">0912*68</a>,
									<a rel="nofollow" href="" class="hotkey">090*888</a>, <a
									rel="nofollow" href="" class="hotkey">0913*</a>, <a
									rel="nofollow" href="" class="hotkey">*6688</a>, <a
									rel="nofollow" href="" class="hotkey">09*(39|79|38|78)</a>, <a
									rel="nofollow" href="" class="hotkey">09(1|0)*888</a>
								</span>
							</div>
							<div class="form-group text-center fullsearch">
								Dãy số không gồm: <input name="notContainNumbers" value="1" type="checkbox">
					<span> 1 </span> <input name="notContainNumbers" value="2" type="checkbox">
					<span> 2 </span> <input name="notContainNumbers" value="3" type="checkbox">
					<span> 3 </span> <input name="notContainNumbers" value="4" type="checkbox">
					<span> 4 </span> <input name="notContainNumbers" value="5" type="checkbox">
					<span> 5 </span> <input name="notContainNumbers" value="6" type="checkbox">
					<span> 6 </span> <input name="notContainNumbers" value="7" type="checkbox">
					<span> 7 </span> <input name="notContainNumbers" value="8" type="checkbox">
					<span> 8 </span> <input name="notContainNumbers" value="9" type="checkbox">
					<span> 9 </span>
							</div>
							<div class="form-group text-center fullsearch">
								<div class="col-md-5 col-xs-6 col-md-offset-1">
									<div class="input-group">
										<div class="input-group-addon font-12">Tổng điểm:</div>
										<input name="totalNumbers" maxlength="2" class="form-control mp0 "
											placeholder=" < 81" />
									</div>
								</div>
								<div class="col-md-5 col-xs-6">
									<div class="input-group">
										<div class="input-group-addon font-12">Tổng Nút:</div>
										<input name="score" maxlength="1" class="form-control mp0 "
											placeholder=" 0 -9" />
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>

				<%@ include file="menu_network.jsp"%>

				<div class="clearfix"></div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h1 class="panel-title">
							SIM SỐ ĐẸP NỔI BẬT <a target="_blank" href=""
								class="pull-right glyphicon glyphicon-print"></a>
						</h1>
					</div>
					<table class="table table-bordered table-condensed">
						<thead>
							<tr>
								<th class="active center">STT</th>
								<th class="active">Sim</th>
								<th class="active sortprice">Giá tiền <span
									class="glyphicon"> <a class="pricetoogle" href=""> <span
											class="glyphicon-arrow-up"></span> <span
											class="glyphicon glyphicon-arrow-down"></span>
									</a>
								</span>
								</th>
								<th class="active text-center">Tổng</th>
								<th class="active">Mạng di dộng</th>
								<th class="active text-center">Đặt mua</th>
								<th class="active text-center text-center">Giỏ hàng</th>
							</tr>
						</thead>
						<tbody>
							<td>
							<td colspan="8">
								<div id="loc1" style="float: right;">
									<form method="POST" class="form-inline" id="loc">
										<strong>Lọc danh sách:</strong> <select name="loctheogia"
											Class="locgia from-control">
											<option value="" selected="selected">Mọi mức giá</option>
											<option value="">Dưới 1 Triệu</option>
											<option value="">Từ 1 -2 Triệu</option>
											<option value="">Từ 2 - 3 Triệu</option>
											<option value="">Từ 3 - 5 Triệu</option>
											<option value="">Từ 5 - 8 Triệu</option>
											<option value="">Từ 8 - 10 Triệu</option>
											<option value="">Từ 10 -15 Triệu</option>
											<option value="">Từ 15 - 20 Triệu</option>
											<option value="">Trên 20 Triệu</option>
										</select> <select name="loctheomang" class="locmang from-control">
											<option value="" class="locmang from-control option">Mọi
												mạng</option>
											<option value="" class="locmang from-control option">Viettel</option>
											<option value="" class="locmang from-control option">Mobifone</option>
											<option value="" class="locmang from-control option">Vinaphone</option>
											<option value="" class="locmang from-control option">Vietnamobile</option>
											<option value="" class="locmang from-control option">Gmobile</option>
										</select>
									</form>

								</div>
							</td>
							</td>
							<c:if test="${listU != null}"></c:if>
							<c:forEach items="${list}" var="sim">
								<tr>
									<td class="center">1</td>
									<td><a href="" title="${sim.realNumber}" rel="nofollow">
											<strong class="font-16 sim">${sim.realNumber}</strong>
									</a></td>
									<td class="font-13" style="color: black;"><fmt:formatNumber
											type="number" maxFractionDigits="3" value="${sim.price}" />
										VNĐ</td>
									<td class="text-center"><span class="badge">${sim.sumOfNumbers}</span></td>
									<td class="text-center"><span
										class="network n${sim.netword.id}"></span></td>
									<td class="text-center"><a rel="nofollow" href=""
										class="btn btn-xs btn-warning ">Đặt mua</a></td>
									<td class="text-center"><a rel="nofollow"
										title="Thêm sim ${sim.realNumber} vào giỏ hàng" href="${context}/user/addSimToCart"
										class="addcarts" data-sim="${sim.realNumber}" data-gia="4.5">
											<i class="glyphicon glyphicon-shopping-cart"></i>
									</a></td>
								</tr>
							</c:forEach>

						</tbody>
						<tfoot>
							<tr>
								<td colspan="8" class="text-center">
									<ul class="pagination pagination-sm">
										<li><span class="inactive" href="#">Trước</span></li>
										<li class="active"><a title="Go to page 1 of 140"
											class="current" href="">[1]</a></li>
										<li><a class="paginate" title="Go to page 2 of 200"
											href="">2</a></li>
										<li><a class="paginate" title="Go to page 3 of 200"
											href="">3</a></li>
										<li><a class="paginate" title="Go to page 4 of 200"
											href="">4</a></li>
										<li><a class="paginate" title="Go to page 5 of 200"
											href="">5</a></li>
										<li><a class="paginate" title="Go to page 6 of 200"
											href="">6</a></li>
										<li><a class="paginate" title="Go to page 7 of 200"
											href="">...</a></li>
										<li><a class="paginate" title="Go to page 200 of 200"
											href="">200</a></li>
										<li><a class="paginate" href="/?page=2">Tiếp theo</a></li>
									</ul>
								</td>
							</tr>
						</tfoot>
					</table>
				</div>
			</div>
			<%@ include file="menu_right.jsp"%>
		</div>
	</div>
<%-- 	<script src="<c:url value="/resource/js/sim.js"/>" --%>
<!-- 		type="text/javascript"></script> -->
	<%@ include file="footer.jsp"%>
</body>
</html>
